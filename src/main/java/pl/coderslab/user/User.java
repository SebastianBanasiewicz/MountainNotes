package pl.coderslab.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.validator.constraints.Length;
import pl.coderslab.plan.TripPlan;
import pl.coderslab.trip.Trip;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
@Entity
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Email
    @NotBlank
    @Column(unique = true)
    private String email;
    @NotBlank
    private String firstName;
    @NotBlank
    @Length(min = 5)
    private String password;
    private String lastName = "pusto";
    private String nickName = "pusto";
    private String aboutMe = "pusto";

    private boolean isAdmin = false;

    @ManyToMany
    private Set<TripPlan> tripPlans = new HashSet<>();

}
