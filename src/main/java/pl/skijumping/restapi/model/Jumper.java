package pl.skijumping.restapi.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
@Getter
@Setter
public class Jumper {
    @Id
    private long id;
    private String name;
    private String last_name;
    private LocalDate birthdate;
}
