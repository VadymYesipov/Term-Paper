package com.aimprosoft.yesipov.service;

import com.aimprosoft.yesipov.persistence.entity.BicycleEntity;

import java.util.List;
import java.util.Optional;

public interface BicycleService {

    List<BicycleEntity> getAllBicycles();

    Optional<BicycleEntity> getById(Long id);

    void saveBicycle(BicycleEntity bicycle);
}
