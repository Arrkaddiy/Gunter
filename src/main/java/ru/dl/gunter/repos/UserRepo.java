package ru.dl.gunter.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.dl.gunter.domain.User;

public interface UserRepo extends JpaRepository<User, Integer> {

    User findByUsernameIgnoreCase(String username);
}
