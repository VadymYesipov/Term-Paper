package com.aimprosoft.yesipov.service.impl;

import com.aimprosoft.yesipov.persistence.entity.AgeCategoryEntity;
import com.aimprosoft.yesipov.persistence.repository.AgeCategoryRepository;
import com.aimprosoft.yesipov.service.AgeCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AgeCategoryServiceImpl implements AgeCategoryService {

    @Autowired
    private AgeCategoryRepository ageCategoryRepository;

    @Override
    public List<AgeCategoryEntity> getAllAgeCategories() {
        return ageCategoryRepository.findAll();
    }
}
