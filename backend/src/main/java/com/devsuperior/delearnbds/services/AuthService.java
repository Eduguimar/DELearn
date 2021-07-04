package com.devsuperior.delearnbds.services;

import com.devsuperior.delearnbds.entities.User;
import com.devsuperior.delearnbds.repositories.UserRepository;
import com.devsuperior.delearnbds.services.exceptions.ForbiddenException;
import com.devsuperior.delearnbds.services.exceptions.UnauthorizedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AuthService {

    @Autowired
    private UserRepository repository;

    @Transactional(readOnly = true)
    public User authenticated() {
        try {
            String userName = SecurityContextHolder.getContext().getAuthentication().getName();
            return repository.findByEmail(userName);
        } catch (Exception e) {
            throw new UnauthorizedException("Invalid user");
        }
    }

    public void validateSelfOrAdmin(Long userId) {
        User user = authenticated();

        if (!user.getId().equals(userId) && !user.hasHole("ROLE_ADMIN")) {
            throw new ForbiddenException("Access denied");
        }
    }
}
