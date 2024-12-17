package com.mega.admin.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.mega.admin.dto.AdminDto;

@Mapper
public interface AdminMapper {
	public AdminDto loginProcess(String admin_id, String admin_pw) throws Exception;

}
