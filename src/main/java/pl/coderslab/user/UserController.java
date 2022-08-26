package pl.coderslab.user;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequiredArgsConstructor
@SessionAttributes("user")
@RequestMapping("/user")
public class UserController {

    private final UserRepository userRepository;
    private final UserDetailsRepository userDetailsRepository;


}
