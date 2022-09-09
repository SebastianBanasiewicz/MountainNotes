package pl.coderslab.user;

import lombok.RequiredArgsConstructor;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import javax.validation.Valid;
import javax.validation.Validator;

@Controller
@RequiredArgsConstructor
@SessionAttributes("logged")
@RequestMapping("/user")
public class UserController {

    private final UserRepository userRepository;
    private final Validator validator;


    @GetMapping("/register")
    public String add(Model model) {
        model.addAttribute("user", new User());
        return "user/register";
    }

    @PostMapping("/register")
    public String save(@ModelAttribute("user") @Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "user/register";
        }
        user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
        userRepository.save(user);
        return "redirect:/user/login";
    }


    @GetMapping("/login")
    public String login() {
        return "user/login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String email,
                        @RequestParam String password,
                        Model model) {

        if (userRepository.existsByEmail(email)) {
            User user = userRepository.findByEmail(email);
            if (BCrypt.checkpw(password, user.getPassword())) {
                model.addAttribute("logged", userRepository.findByEmail(email));
                return "redirect:/";
            }
        }
        return "user/login";
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("users", userRepository.findAll());
        return "user/list";
    }

    @Transactional
    @GetMapping("/home")
    public String homePage(Model model, @SessionAttribute("logged") User user) {
        User userData = userRepository.getOne(user.getId());
        model.addAttribute("user", userData);
        model.addAttribute("tripPlans", userData.getTripPlans());
        return "user/home";
    }

    @ExceptionHandler(ServletRequestBindingException.class)
    public String handle() {
        return "redirect:/user/login";
    }

    @GetMapping("/edit")
    public String editUser(Model model, @SessionAttribute("logged") User user) {
        model.addAttribute("user", userRepository.findByEmail(user.getEmail()));
        return "user/edit";
    }

    @PostMapping("/edit")
    public String saveUserChanges(@ModelAttribute("user") @Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "user/edit";
        }
        userRepository.save(user);
        return "redirect:/user/home";
    }


}
