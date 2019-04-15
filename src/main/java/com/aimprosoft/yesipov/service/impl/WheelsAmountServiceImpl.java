package com.aimprosoft.yesipov.service.impl;

import com.aimprosoft.yesipov.persistence.entity.WheelsAmountEntity;
import com.aimprosoft.yesipov.persistence.repository.WheelsAmountRepository;
import com.aimprosoft.yesipov.service.WheelsAmountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WheelsAmountServiceImpl implements WheelsAmountService {

    @Autowired
    private WheelsAmountRepository wheelsAmountRepository;

    @Override
    public List<WheelsAmountEntity> getAllWheelsAmounts() {
        return wheelsAmountRepository.findAll();
    }
}
