package com.aimprosoft.yesipov.service.impl;

import com.aimprosoft.yesipov.persistence.entity.ImageEntity;
import com.aimprosoft.yesipov.persistence.repository.ImageRepository;
import com.aimprosoft.yesipov.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ImageServiceImpl implements ImageService {

    @Autowired
    private ImageRepository imageRepository;

    @Override
    public ImageEntity saveImage(ImageEntity imageEntity) {
        return imageRepository.save(imageEntity);
    }
}
