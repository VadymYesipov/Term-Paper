package com.aimprosoft.yesipov.service.impl;

import com.aimprosoft.yesipov.persistence.entity.BicycleCategoryEntity;
import com.aimprosoft.yesipov.persistence.repository.BicycleCategoryRepository;
import com.aimprosoft.yesipov.service.BicycleCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BicycleCategoryServiceImpl implements BicycleCategoryService {

    @Autowired
    private BicycleCategoryRepository bicycleCategoryRepository;

    @Override
    public List<BicycleCategoryEntity> getAllBicycleCategories() {
        return bicycleCategoryRepository.findAll();
    }
}
