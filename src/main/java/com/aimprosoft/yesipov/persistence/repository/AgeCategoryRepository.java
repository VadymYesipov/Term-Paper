package com.aimprosoft.yesipov.persistence.repository;

import com.aimprosoft.yesipov.persistence.entity.AgeCategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AgeCategoryRepository extends JpaRepository<AgeCategoryEntity, Long> {
}
