package com.aimprosoft.yesipov.persistence.repository;

import com.aimprosoft.yesipov.persistence.entity.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductTypeRepository extends JpaRepository<ProductEntity, Long> {
}
