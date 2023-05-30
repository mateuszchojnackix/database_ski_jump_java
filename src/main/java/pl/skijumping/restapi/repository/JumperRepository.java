package pl.skijumping.restapi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.skijumping.restapi.model.Jumper;

@Repository
public interface JumperRepository extends JpaRepository<Jumper, Long> {
}
