package pl.coderslab.plan;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.user.User;
import pl.coderslab.user.UserRepository;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.Set;

@Controller
@RequiredArgsConstructor
@SessionAttributes("logged")
@RequestMapping("/tripPlan")
public class TripPlanController {

    private final TripPlanRepository tripPlanRepository;
    private final UserRepository userRepository;

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("tripPlans", tripPlanRepository.findAll());
        return "tripPlan/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("tripPlan", new TripPlan());
        return "tripPlan/add";
    }

    @ExceptionHandler(ServletRequestBindingException.class)
    public String handle() {
        return "redirect:/user/login";
    }

    @PostMapping("/add")
    public String create(@ModelAttribute("tripPlan") @Valid TripPlan tripPlan, BindingResult result) {
        if (result.hasErrors()) {
            return "tripPlan/add";
        }
        tripPlanRepository.save(tripPlan);
        return "redirect:/tripPlan/list";
    }

    @GetMapping("/{id}/details")
    public String tripPlanDetails(@PathVariable Long id, Model model) {
        model.addAttribute("tripPlan", tripPlanRepository.findById(id).get());
        return "/tripPlan/details";
    }

    @GetMapping("/delete/{id}")
    public String deleteTripPlan(@PathVariable Long id) {
        tripPlanRepository.deleteById(id);
        return "redirect:/tripPlan/list";
    }

    @GetMapping("/edit/{id}")
    public String editTrip(Model model, @PathVariable Long id) {
        model.addAttribute("tripPlan", tripPlanRepository.findById(id).get());
        return "tripPlan/edit";
    }

    @PostMapping("/edit/{id}")
    public String edit(@ModelAttribute("tripPlan") @Valid TripPlan tripPlan, BindingResult result) {
        if (result.hasErrors()) {
            return "tripPlan/edit";
        }
        tripPlanRepository.save(tripPlan);
        return "redirect:/tripPlan/list";
    }

    @Transactional
    @GetMapping("/list/{id}/join")
    public String joinTrip(@SessionAttribute("logged") User user,
                           @PathVariable Long id) {
        User userAddToTrip = userRepository.getOne(user.getId());
        Set<TripPlan> tripPlans = userAddToTrip.getTripPlans();
        tripPlans.add(tripPlanRepository.getOne(id));
        userAddToTrip.setTripPlans(tripPlans);
        userRepository.save(userAddToTrip);
        return "redirect:/tripPlan/" + id + "/details";
    }

    @Transactional
    @GetMapping("/list/{id}/leave")
    public String leaveTrip(@SessionAttribute("logged") User user,
                            @PathVariable Long id) {
        User userLeaveFromTrip = userRepository.getOne(user.getId());
        Set<TripPlan> tripPlans = userLeaveFromTrip.getTripPlans();
        if (tripPlans.contains(tripPlanRepository.getOne(id))) {
            tripPlans.remove(tripPlanRepository.getOne(id));
        }
        userLeaveFromTrip.setTripPlans(tripPlans);
        userRepository.save(userLeaveFromTrip);
        return "redirect:/tripPlan/list";
    }

}
