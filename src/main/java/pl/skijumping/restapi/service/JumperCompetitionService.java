package pl.skijumping.restapi.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.skijumping.restapi.model.Jumper_Competition;
import pl.skijumping.restapi.repository.JumperCompetitionRepository;


import java.util.List;

@Service
@RequiredArgsConstructor
public class JumperCompetitionService {
    private final JumperCompetitionRepository jumperCompetitionRepository;

    public List<Jumper_Competition> getJumpersCompetition() {
        return jumperCompetitionRepository.findAll();
    }

    public Jumper_Competition getSingleJumperCompetition(long id) {
        return jumperCompetitionRepository.findById(id)
                .orElseThrow();
    }
}

