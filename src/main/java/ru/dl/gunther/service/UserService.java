package ru.dl.gunther.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import ru.dl.gunther.domain.Role;
import ru.dl.gunther.domain.User;
import ru.dl.gunther.repos.UserRepo;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserRepo userRepo;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepo.findByUsernameIgnoreCase(username);
    }

    public User loadUserObjByUsername(String username) {
        return userRepo.findByUsernameIgnoreCase(username);
    }

    public boolean addUser(User user) {

        if(userRepo.findByUsernameIgnoreCase(user.getUsername()) != null) return false;

        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));

        userRepo.save(user);

        return true;
    }

    public List<User> findAll() {
        return userRepo.findAll();
    }

    public Optional<User> findById(Integer id) {return userRepo.findById(id);}

    public void save(User user) {
        userRepo.save(user);
    }

}
