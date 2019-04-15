package com.aimprosoft.yesipov.service.impl;

import com.aimprosoft.yesipov.persistence.entity.QualityEntity;
import com.aimprosoft.yesipov.persistence.repository.QualityRepository;
import com.aimprosoft.yesipov.service.QualityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QualityServiceImpl implements QualityService {

    @Autowired
    private QualityRepository qualityRepository;

    @Override
    public List<QualityEntity> getAllQualities() {
        return qualityRepository.findAll();
    }
}
