package pl.skijumping.restapi.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.skijumping.restapi.model.Jumper;
import pl.skijumping.restapi.repository.JumperRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class JumperService {

    private final JumperRepository jumperRepository;

    public List<Jumper> getJumpers() {
        return jumperRepository.findAll();
    }

    public Jumper getSingleJumper(long id) {
        return jumperRepository.findById(id)
                .orElseThrow();
    }
}
