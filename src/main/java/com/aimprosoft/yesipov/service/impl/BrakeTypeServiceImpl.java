package com.aimprosoft.yesipov.service.impl;

import com.aimprosoft.yesipov.persistence.entity.BrakeTypeEntity;
import com.aimprosoft.yesipov.persistence.repository.BrakeTypeRepository;
import com.aimprosoft.yesipov.service.BrakeTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BrakeTypeServiceImpl implements BrakeTypeService {

    @Autowired
    private BrakeTypeRepository brakeTypeRepository;

    @Override
    public List<BrakeTypeEntity> getAllBrakeTypes() {
        return brakeTypeRepository.findAll();
    }
}
