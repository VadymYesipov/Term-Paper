package com.aimprosoft.yesipov.persistence.repository;

import com.aimprosoft.yesipov.persistence.entity.FixationEntity;

import java.util.List;

public interface FixationRepository {

    List<FixationEntity> getFixationTypes();
}
