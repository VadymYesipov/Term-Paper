package com.aimprosoft.yesipov.persistence.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FixationEntity {

    private long id;

    private String fixationType;
}
