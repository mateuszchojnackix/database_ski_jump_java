package pl.skijumping.restapi.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import pl.skijumping.restapi.model.Jumper_Competition;
import pl.skijumping.restapi.service.JumperCompetitionService;

import java.util.List;

@RestController
public class JumperCompetitionController {

    private final JumperCompetitionService jumperCompetitionService;

    public JumperCompetitionController(JumperCompetitionService jumperCompetitionService) {
        this.jumperCompetitionService = jumperCompetitionService;
    }


    @GetMapping("/jumpers_competition")
    public List<Jumper_Competition> getJumpersCompetition() {
        return jumperCompetitionService.getJumpersCompetition();
    }

    @GetMapping("/jumpers_competition/{id}")
    public Jumper_Competition getSingleJumperCompetition(@PathVariable long id) {
        return jumperCompetitionService.getSingleJumperCompetition(id);

    }
}