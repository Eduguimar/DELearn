package com.devsuperior.delearnbds.repositories;

import com.devsuperior.delearnbds.entities.Enrollment;
import com.devsuperior.delearnbds.entities.pk.EnrollmentPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EnrollmentRepository extends JpaRepository<Enrollment, EnrollmentPK> {
}
