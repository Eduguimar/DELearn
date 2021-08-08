package com.devsuperior.delearnbds.services;

import com.devsuperior.delearnbds.dto.NotificationDTO;
import com.devsuperior.delearnbds.entities.Notification;
import com.devsuperior.delearnbds.entities.User;
import com.devsuperior.delearnbds.repositories.NotificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class NotificationService {

    @Autowired
    private NotificationRepository repository;

    @Autowired
    private AuthService authService;

    @Transactional(readOnly = true)
    public Page<NotificationDTO> notificationsForCurrentUser(boolean unreadOnly, Pageable pageable) {
        User user = authService.authenticated();
        Page<Notification> pages = repository.find(user, unreadOnly, pageable);

        return pages.map(notification -> new NotificationDTO(notification));
    }

}
