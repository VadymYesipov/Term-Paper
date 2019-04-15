package com.aimprosoft.yesipov.dto;

import com.aimprosoft.yesipov.persistence.entity.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BicycleInfoDTO {

    private List<BrandEntity> brands;

    private List<BicycleCategoryEntity> bicycleCategories;

    private List<AgeCategoryEntity> ageCategories;

    private List<BrakeTypeEntity> brakeTypes;

    private List<ColorEntity> colors;

    private List<QualityEntity> qualities;

    private List<SpeedAmountEntity> speedAmounts;

    private List<WheelsAmountEntity> wheelsAmounts;
}
