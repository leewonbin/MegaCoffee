package com.mega.menu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.MenuNutrientDto;
import com.mega.menu.dto.NutrientDto;
import com.mega.menu.dto.TypeDto;

@Mapper
public interface MenuMapper {

	public List<MenuDto> menuList() throws Exception;

	public MenuDto menuRead(int menu_id) throws Exception;

	public NutrientDto getNutrient(int menu_id) throws Exception;

	// public List<AllergenDto> getAllergen(int menu_id) throws Exception;

	public List<MenuDto> menuList(Integer category_id);

	public List<AllergenDto> getAllegenList() throws Exception;

	public List<MenuDto> filterType(List<Integer> type_id) throws Exception;
	
	public MenuNutrientDto getMenuNutrient(int menu_id) throws Exception;

	public List<TypeDto> getType(int menu_id) throws Exception;

	public List<AllergenDto> getAllergen(int menu_id) throws Exception;

	public List<TypeDto> getTypeList() throws Exception;

	// public List<AllergenDto> getAllergen(int menu_id) throws Exception;

}
