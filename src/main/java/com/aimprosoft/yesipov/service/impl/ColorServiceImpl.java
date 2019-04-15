package com.aimprosoft.yesipov.service.impl;

import com.aimprosoft.yesipov.persistence.entity.ColorEntity;
import com.aimprosoft.yesipov.persistence.repository.ColorRepository;
import com.aimprosoft.yesipov.service.ColorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ColorServiceImpl implements ColorService {

    @Autowired
    private ColorRepository colorRepository;

    @Override
    public List<ColorEntity> getAllColors() {
        return colorRepository.findAll();
    }
}
