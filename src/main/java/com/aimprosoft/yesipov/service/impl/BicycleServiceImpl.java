package com.aimprosoft.yesipov.service.impl;

import com.aimprosoft.yesipov.persistence.entity.BicycleEntity;
import com.aimprosoft.yesipov.persistence.repository.BicycleRepository;
import com.aimprosoft.yesipov.service.BicycleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BicycleServiceImpl implements BicycleService{

    @Autowired
    private BicycleRepository bicycleRepository;

    @Override
    public List<BicycleEntity> getAllBicycles() {
        return bicycleRepository.findAll();
    }
}
