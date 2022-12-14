package pl.coderslab.trip;

import lombok.*;
import pl.coderslab.user.User;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.time.LocalDate;


@Entity
@Getter
@Setter
@Table(name = "trips")
public class Trip {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String name;
    @NotEmpty
    private String description;
    @NotEmpty
    private String date;
    @NotEmpty
    private String weather;
    @NotEmpty
    private String members;
    private String accommodation;
    private LocalDate saveDate = LocalDate.now();

    @OneToOne
    private User user;

}
