package pl.skijumping.restapi.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class Part {
    @Id
    private long id;
    private long jumper_id;
    private long competition_id;
}
