package pl.skijumping.restapi.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import pl.skijumping.restapi.model.Jumper;
import pl.skijumping.restapi.service.JumperService;

import java.util.List;

@RestController
public class JumperController {

    private final JumperService jumperService;

    public JumperController(JumperService jumperService) {
        this.jumperService = jumperService;
    }

    @GetMapping("/jumpers")
    public List<Jumper> getJumpers() {
        return jumperService.getJumpers();
    }

    @GetMapping("/jumpers/{id}")
    public Jumper getSingleJumper(@PathVariable long id) {
        return jumperService.getSingleJumper(id);

    }
}
