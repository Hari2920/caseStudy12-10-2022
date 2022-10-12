package com.gl.crudCaseStudy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.gl.crudCaseStudy.bean.CompanyShare;

public interface CompanyShareRepository extends JpaRepository<CompanyShare, Long> {
	@Query("select max(companyId) from CompanyShare")
	public Long findMaxCompanyId();

}
