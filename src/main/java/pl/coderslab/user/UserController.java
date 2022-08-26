package pl.coderslab.user;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.validation.Validator;
import java.util.List;

@Controller
@RequiredArgsConstructor
@SessionAttributes("user")
@RequestMapping("/user")
public class UserController {

    private final UserRepository userRepository;
    private final UserDetailsRepository userDetailsRepository;
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
        UserDetails userDetails = new UserDetails();
        userDetailsRepository.save(userDetails);
        user.setUserDetails(userDetails);
        userRepository.save(user);
        return "redirect:/user/login";
    }


    @GetMapping("/login")
    public String login(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return "user/login";
    }

    @PostMapping("/login")
    public String login(@RequestParam("email") String email,
                        @RequestParam("password") String password,
                        HttpSession session) {
        List<User> userList = userRepository.findAll();

        for (User user : userList) {
            if (email.equals(user.getEmail()) && password.equals(user.getPassword())) {
                session.setAttribute("user", user);
            }
        }
        if (session.getAttribute("user") != null) {
            return "redirect:/";
        } else {
            return "redirect:/user/login";
        }
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("user", userRepository.findAll());
        return "user/list";
    }

}
