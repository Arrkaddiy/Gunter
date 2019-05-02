package ru.dl.gunter.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.dl.gunter.domain.Message;
import ru.dl.gunter.repos.MessageRepo;

import java.util.List;

@Service
public class MessageService {
    @Autowired
    private MessageRepo messageRepo;

    public List<Message> findAll() {
        return messageRepo.findAll();
    }

    public List<Message> findByTag(String tag) {
        return messageRepo.findByTag(tag);
    }

    public void save(Message message) {
        messageRepo.save(message);
    }

}
