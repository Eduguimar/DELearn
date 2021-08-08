package com.devsuperior.delearnbds.resources;


import com.devsuperior.delearnbds.dto.NotificationDTO;
import com.devsuperior.delearnbds.services.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/notifications")
public class NotificationResource {

    @Autowired
    NotificationService service;

    @GetMapping
    public ResponseEntity<Page<NotificationDTO>> notificationsForCurrentUser(@RequestParam(name = "unreadOnly", defaultValue = "false") Boolean unreadOnly,
              Pageable pageable) {
        Page<NotificationDTO> page = service.notificationsForCurrentUser(unreadOnly, pageable);
        return ResponseEntity.ok().body(page);
    }
}
