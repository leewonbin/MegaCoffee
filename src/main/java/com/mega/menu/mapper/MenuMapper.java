package com.mega.menu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.NutrientDto;

@Mapper
public interface MenuMapper {
	
	public List<MenuDto> menuList() throws Exception;
	
	public MenuDto menuRead(int menu_id) throws Exception;
	
	public NutrientDto getNutrient(int menu_id) throws Exception;

    public List<AllergenDto> getAllergens(int menu_id) throws Exception;
}