package com.mega.menu.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.MenuInfoDto;
import com.mega.menu.dto.MenuNutrientDto;
import com.mega.menu.dto.NutrientDto;
import com.mega.menu.dto.TypeDto;

public interface MenuService {

//	public List<MenuDto> menuList() throws Exception;

//	public MenuInfoDto menuRead(int menu_id) throws Exception;
	
	public NutrientDto getNutrient(int menu_id) throws Exception;//

	public Map<String, Object> getMenuNutrient(int menu_id) throws Exception;

	public List<TypeDto> getType(int menu_id) throws Exception;

	public List<AllergenDto> getAllergen(int menu_id) throws Exception;

	public List<MenuDto> menuList(Integer category_id) throws Exception;

	public List<MenuDto> filterType(int category_id, String typeIdStr) throws Exception;

	public List<AllergenDto> getAllegenList() throws Exception;

	public List<TypeDto> getTypeList() throws Exception;

	public String uploadFile(MultipartFile file) throws Exception;

	public int insertMenu(MenuNutrientDto menuNutrientDto, List<String> typeIds, List<String> allergenIds)
			throws Exception;

}
