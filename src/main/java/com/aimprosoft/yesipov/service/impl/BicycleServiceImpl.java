package com.aimprosoft.yesipov.service.impl;

import com.aimprosoft.yesipov.persistence.entity.BicycleEntity;
import com.aimprosoft.yesipov.persistence.repository.BicycleRepository;
import com.aimprosoft.yesipov.service.BicycleService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Optional;

@Service
public class BicycleServiceImpl implements BicycleService {

    @Autowired
    private BicycleRepository bicycleRepository;

    @Override
    public List<BicycleEntity> getAllBicycles() {
        return bicycleRepository.findAll();
    }

    @Override
    public Optional<BicycleEntity> getById(Long id) {
        return bicycleRepository.findById(id);
    }

    @Override
    public void saveBicycle(BicycleEntity bicycle) {
        bicycleRepository.save(bicycle);
    }
}
