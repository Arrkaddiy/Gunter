package ru.dl.gunther.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import ru.dl.gunther.domain.Message;
import ru.dl.gunther.repos.MessageRepo;

import java.io.IOException;
import java.util.List;

@Service
public class MessageService {
    @Autowired
    private MessageRepo messageRepo;
    @Autowired
    private FileService fileService;


    public List<Message> findAll() {
        return messageRepo.findAll();
    }

    public List<Message> findByTag(String tag) {
        return messageRepo.findByTag(tag);
    }

    public void save(Message message) {
        messageRepo.save(message);
    }
    public void saveNew(Message message, MultipartFile file) throws IOException {
        message.setFilename(fileService.addPicture(file));
        messageRepo.save(message);
    }
}
