package ru.dl.gunther.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.dl.gunther.domain.Message;
import ru.dl.gunther.domain.User;

import java.util.List;

public interface MessageRepo extends JpaRepository<Message, Integer> {

    List<Message> findByTag(String tag);
    List<Message> findByAuthor(User user);
}
