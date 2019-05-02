package ru.dl.gunther.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.dl.gunther.domain.User;

public interface UserRepo extends JpaRepository<User, Integer> {

    User findByUsernameIgnoreCase(String username);
}
