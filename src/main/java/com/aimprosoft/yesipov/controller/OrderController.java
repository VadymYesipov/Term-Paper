package com.aimprosoft.yesipov.controller;

import com.aimprosoft.yesipov.persistence.entity.BicycleEntity;
import com.aimprosoft.yesipov.persistence.repository.BicycleRepository;
import com.aimprosoft.yesipov.persistence.repository.ProductRepository;
import com.aimprosoft.yesipov.persistence.repository.ProductTypeRepository;
import com.aimprosoft.yesipov.service.BicycleService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Transactional(propagation = Propagation.REQUIRES_NEW)
@Log4j2
public class OrderController {

    @Autowired
    private BicycleService bicycleService;

    @CrossOrigin(origins="http://localhost:4200")
    @GetMapping("/bicycles")
    public List<BicycleEntity> getAllBicycles() {
        return bicycleService.getAllBicycles();
    }
}
