package com.mega.menu.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.MenuInfoDto;
import com.mega.menu.dto.MenuNutrientDto;
import com.mega.menu.dto.NutrientDto;
import com.mega.menu.dto.TypeDto;

@Mapper
public interface MenuMapper {

//	public List<MenuDto> menuList() throws Exception;

//	public MenuInfoDto menuRead(int menu_id) throws Exception;

	public NutrientDto getNutrient(int menu_id) throws Exception;//

	public List<MenuDto> menuList(Integer category_id) throws Exception;

	public List<AllergenDto> getAllegenList() throws Exception;

	public Map<String, Object> getMenuNutrient(int menu_id) throws Exception;

	public List<TypeDto> getType(int menu_id) throws Exception;

	public List<AllergenDto> getAllergen(int menu_id) throws Exception;

	public List<MenuDto> filterType(int category_id, String typeIdStr) throws Exception;

	public List<TypeDto> getTypeList() throws Exception;

	public List<MenuDto> getMenuAllList() throws Exception;

	public int insertNutrient(MenuNutrientDto menuNutrientDto) throws Exception;

	public int insertMenu(MenuNutrientDto mnDto, List<String> typeIdList, List<String> allergenIdList) throws Exception;

	public int modifyMenu(MenuNutrientDto menuNutrientDto) throws Exception;

	public int modifyType(int menu_id, List<String> typeIdList) throws Exception;

	public int modifyallergen(int menu_id, List<String> allergenIdList) throws Exception;

	public int deleteMenu(int menu_id) throws Exception;


}
