package com.aimprosoft.yesipov.service.impl;

import com.aimprosoft.yesipov.persistence.entity.SpeedAmountEntity;
import com.aimprosoft.yesipov.persistence.repository.SpeedAmountRepository;
import com.aimprosoft.yesipov.service.SpeedAmountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpeedAmountServiceImpl implements SpeedAmountService {

    @Autowired
    private SpeedAmountRepository speedAmountRepository;

    @Override
    public List<SpeedAmountEntity> getAllSpeedAmounts() {
        return speedAmountRepository.findAll();
    }
}
