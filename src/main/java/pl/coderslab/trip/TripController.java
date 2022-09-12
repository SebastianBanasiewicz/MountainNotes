package pl.coderslab.trip;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.user.User;
import pl.coderslab.user.UserRepository;

import javax.validation.Valid;


@Controller
@RequiredArgsConstructor
@SessionAttributes("logged")
@RequestMapping("/trip")
public class TripController {

    private final TripRepository tripRepository;
    private final UserRepository userRepository;

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("trips", tripRepository.findAll());
        model.addAttribute("users", userRepository.findAll());
        return "trip/list";
    }

    @GetMapping("/add")
    public String add(Model model, Long id) {
        model.addAttribute("trip", new Trip());
        return "trip/add";
    }

    @ExceptionHandler(ServletRequestBindingException.class)
    public String handle() {
        return "redirect:/user/login";
    }

    @PostMapping("/add")
    public String create(@ModelAttribute("trip") @Valid Trip trip,
                         @ModelAttribute("user") User user, BindingResult result) {
        if (result.hasErrors()) {
            return "trip/add";
        }
        tripRepository.save(trip);
        return "redirect:/trip/list";
    }

    @GetMapping("/{id}/details")
    public String tripDetails(@PathVariable Long id, Model model) {
        model.addAttribute("trip", tripRepository.findById(id).get());
        return "/trip/details";
    }

    @GetMapping("/delete/{id}")
    public String deleteTrip(@PathVariable Long id) {
        tripRepository.deleteById(id);
        return "redirect:/trip/list";
    }

    @GetMapping("/edit/{id}")
    public String editTrip(Model model, @PathVariable Long id) {
        model.addAttribute("trip", tripRepository.findById(id).get());
        return "trip/edit";
    }

    @PostMapping("/edit/{id}")
    public String edit(@ModelAttribute("trip") @Valid Trip trip, BindingResult result) {
        if (result.hasErrors()) {
            return "trip/edit";
        }
        tripRepository.save(trip);
        return "redirect:/trip/list";
    }
}

