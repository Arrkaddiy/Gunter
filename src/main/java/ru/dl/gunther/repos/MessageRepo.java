package ru.dl.gunther.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.dl.gunther.domain.Message;
import ru.dl.gunther.domain.User;

import java.util.List;

public interface MessageRepo extends JpaRepository<Message, Integer> {

    List<Message> findByTagOrderByIdDesc(String tag);
    List<Message> findByAuthorOrderByIdDesc(User user);
}
