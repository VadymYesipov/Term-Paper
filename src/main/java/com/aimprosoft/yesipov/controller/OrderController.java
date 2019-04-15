package com.aimprosoft.yesipov.controller;

import com.aimprosoft.yesipov.dto.BicycleInfoDTO;
import com.aimprosoft.yesipov.dto.ImageDTO;
import com.aimprosoft.yesipov.persistence.entity.BicycleEntity;
import com.aimprosoft.yesipov.persistence.entity.ImageEntity;
import com.aimprosoft.yesipov.service.*;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Transactional(propagation = Propagation.REQUIRES_NEW)
@Log4j2
public class OrderController {

    @Autowired
    private BicycleService bicycleService;

    @Autowired
    private ImageService imageService;

    @Autowired
    private BrandService brandService;

    @Autowired
    private BicycleCategoryService bicycleCategoryService;

    @Autowired
    private AgeCategoryService ageCategoryService;

    @Autowired
    private BrakeTypeService brakeTypeService;

    @Autowired
    private ColorService colorService;

    @Autowired
    private QualityService qualityService;

    @Autowired
    private SpeedAmountService speedAmountService;

    @Autowired
    private WheelsAmountService wheelsAmountService;

    @CrossOrigin(origins="http://localhost:4200")
    @GetMapping("/bicycles")
    public List<BicycleEntity> getAllBicycles() {
        return bicycleService.getAllBicycles();
    }

    @CrossOrigin(origins="http://localhost:4200")
    @GetMapping("/bicycleInfo")
    public BicycleInfoDTO getBicycleInfo() {
        return new BicycleInfoDTO(
                brandService.getAllBrands(),
                bicycleCategoryService.getAllBicycleCategories(),
                ageCategoryService.getAllAgeCategories(),
                brakeTypeService.getAllBrakeTypes(),
                colorService.getAllColors(),
                qualityService.getAllQualities(),
                speedAmountService.getAllSpeedAmounts(),
                wheelsAmountService.getAllWheelsAmounts()
        );
    }

    @CrossOrigin(origins="http://localhost:4200")
    @PostMapping("/saveImage")
    public void saveImages(@RequestBody ImageDTO imageDTO) {
        bicycleService.getById(imageDTO.getId())
                .ifPresent(bicycleEntity -> {
                    ImageEntity imageEntity = bicycleEntity.getImage();
                    imageEntity.setImage(imageDTO.getImage());
                    imageService.saveImage(imageEntity);
                });
    }

    @CrossOrigin(origins="http://localhost:4200")
    @PostMapping("/saveBicycle")
    public void saveBicycle(@RequestBody BicycleEntity bicycle) {
        bicycleService.saveBicycle(bicycle);
    }
}
