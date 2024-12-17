package com.mega.admin.service;

import com.mega.admin.dto.AdminDto;

public interface AdminService {
	public AdminDto loginProcess(String admin_id, String admin_pw) throws Exception;

}
