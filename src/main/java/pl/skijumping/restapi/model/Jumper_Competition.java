package pl.skijumping.restapi.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import java.time.LocalDate;
import java.util.List;

@Entity
@Getter
@Setter
public class Jumper_Competition {
    @Id
    private long id;
    private String name;
    private String last_name;
    private LocalDate birthdate;
    @OneToMany
    @JoinColumn(name = "jumper_id")
    private List<Part> part;
}