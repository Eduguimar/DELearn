package com.devsuperior.delearnbds.services;

import com.devsuperior.delearnbds.dto.UserDTO;
import com.devsuperior.delearnbds.entities.User;
import com.devsuperior.delearnbds.repositories.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
import java.util.Optional;

@Service
public class UserService implements UserDetailsService {

    private static Logger logger = LoggerFactory.getLogger(UserService.class);

    @Autowired
    UserRepository repository;

    @Autowired
    private AuthService authService;

    @Transactional(readOnly = true)
    public UserDTO findById(Long id) {
        authService.validateSelfOrAdmin(id);

        Optional<User> obj = repository.findById(id);
        User user = obj.orElseThrow(() -> new EntityNotFoundException("Entity not found"));
        return new UserDTO(user);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = repository.findByEmail(username);
        if (user == null) {
            logger.error("User not found: " + username);
            throw new UsernameNotFoundException("Email not found");
        }
        logger.info("User found: " + username);

        return user;
    }
}
