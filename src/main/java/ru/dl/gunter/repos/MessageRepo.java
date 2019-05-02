package ru.dl.gunter.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.dl.gunter.domain.Message;

import java.util.List;

public interface MessageRepo extends JpaRepository<Message, Integer> {

    List<Message> findByTag(String tag);
}
