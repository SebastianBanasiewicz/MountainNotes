package pl.coderslab.plan;

import lombok.Getter;
import lombok.Setter;
import pl.coderslab.user.User;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@Table(name = "tripPlans")
public class TripPlan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String name;
    @NotEmpty
    private String description;
    @NotEmpty
    private String startDate;
    @NotEmpty
    private String endDate;
    private String accommodation;
    private LocalDate saveDate = LocalDate.now();

    @ManyToMany(mappedBy = "tripPlans", fetch = FetchType.EAGER)
    private List<User> members = new ArrayList<>();

    @ManyToOne
    private User user;

}
