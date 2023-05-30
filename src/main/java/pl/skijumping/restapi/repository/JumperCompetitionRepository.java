package pl.skijumping.restapi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.skijumping.restapi.model.Jumper_Competition;

@Repository
public interface JumperCompetitionRepository extends JpaRepository<Jumper_Competition, Long> {
}
