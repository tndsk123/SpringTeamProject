package com.example.test.model.company.dao;

import com.example.test.model.company.dto.CompanyDTO;

public interface CompanyDAO {

	public CompanyDTO view(String company_name);
	public void insert(CompanyDTO dto);
	public String check(String userid);
}
