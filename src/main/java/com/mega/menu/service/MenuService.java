package com.mega.menu.service;

import java.util.List;

import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.NutrientDto;

public interface MenuService {

	public List<MenuDto> menuList() throws Exception;

	public MenuDto menuRead(int menu_id) throws Exception;

	public NutrientDto getNutrient(int menu_id) throws Exception;

	public List<AllergenDto> getAllergens(int menu_id) throws Exception;

	public List<AllergenDto> getAllegenList() throws Exception;
}
