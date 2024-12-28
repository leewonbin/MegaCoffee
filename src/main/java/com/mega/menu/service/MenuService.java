package com.mega.menu.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.MenuInfoDto;
import com.mega.menu.dto.NutrientDto;
import com.mega.menu.dto.TypeDto;

public interface MenuService {

//	public List<MenuDto> menuList() throws Exception;

//	public MenuInfoDto menuRead(int menu_id) throws Exception;

	public NutrientDto getNutrient(int menu_id) throws Exception;//

	public Map<String, Object> getMenuNutrient(int menu_id) throws Exception;

	public List<TypeDto> getType(int menu_id) throws Exception;

	public List<AllergenDto> getAllergen(int menu_id) throws Exception;

	public List<Map<String, Object>> menuList(Integer category_id) throws Exception;

	public int[] filterType(int category_id, String typeIdStr) throws Exception;

	public List<AllergenDto> getAllegenList() throws Exception;

	public List<TypeDto> getTypeList() throws Exception;

	public List<MenuDto> getMenuAllList(String category) throws Exception;

	public String uploadFile(MultipartFile file) throws Exception;

	public void deleteFile(String menu_file_id) throws Exception;

	public int insertMenu(Map<String, Object> menuInfo, List<String> typeIdList, List<String> allergenIdList)
			throws Exception;

	public int modifyMenu(Map<String, Object> menuInfo) throws Exception;

	public int modifyType(int menu_id, List<String> typeIdList) throws Exception;

	public int modifyallergen(int menu_id, List<String> allergenIdList) throws Exception;

	public int deleteMenu(int menu_id) throws Exception;

}
