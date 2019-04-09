package com.aimprosoft.yesipov.persistence.repository;

import com.aimprosoft.yesipov.persistence.entity.ColorEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ColorRepository extends JpaRepository<ColorEntity, Long> {
}
