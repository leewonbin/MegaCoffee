package com.mega.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.admin.dto.AdminDto;
import com.mega.admin.mapper.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;

	@Override
	public AdminDto loginProcess(String admin_id, String admin_pw) throws Exception {
		return adminMapper.loginProcess(admin_id, admin_pw);
	}

}
