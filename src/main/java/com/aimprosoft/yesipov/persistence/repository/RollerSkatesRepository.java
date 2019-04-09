package com.aimprosoft.yesipov.persistence.repository;


import com.aimprosoft.yesipov.persistence.entity.RollerSkatesEntity;

import java.io.IOException;
import java.util.List;

public interface RollerSkatesRepository {

    void addRollerSkates(RollerSkatesEntity rollerSkates);

    void updateRollerSkates(RollerSkatesEntity rollerSkates);

    void deleteRollerSkates(long id);

    RollerSkatesEntity getRollerSkates(long id) throws IOException;

    List<RollerSkatesEntity> getRollerSkates() throws IOException;
}
