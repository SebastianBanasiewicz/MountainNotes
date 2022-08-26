package pl.coderslab.user;


import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "userDetails")
public class UserDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String firstName = "pusto";
    private String lastName = "pusto";
}
