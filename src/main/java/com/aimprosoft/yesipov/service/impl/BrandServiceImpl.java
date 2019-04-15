package com.aimprosoft.yesipov.service.impl;

import com.aimprosoft.yesipov.persistence.entity.BrandEntity;
import com.aimprosoft.yesipov.persistence.repository.BrandRepository;
import com.aimprosoft.yesipov.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BrandServiceImpl implements BrandService {

    @Autowired
    private BrandRepository brandRepository;

    @Override
    public List<BrandEntity> getAllBrands() {
        return brandRepository.findAll();
    }
}
