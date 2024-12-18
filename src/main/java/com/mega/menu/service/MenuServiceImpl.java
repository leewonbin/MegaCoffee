package com.mega.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.NutrientDto;
import com.mega.menu.mapper.MenuMapper;

@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	private MenuMapper menuMapper;
	
	@Override
	public List<MenuDto> menuList() throws Exception {
		return menuMapper.menuList();
	}

	@Override
	public MenuDto menuRead(int menu_id) throws Exception {
		return menuMapper.menuRead(menu_id);
	}
	
	@Override
    public NutrientDto getNutrient(int menu_id) throws Exception {
        return menuMapper.getNutrient(menu_id);
    }

    @Override
    public List<AllergenDto> getAllergens(int menu_id) throws Exception {
        return menuMapper.getAllergens(menu_id);
    }

}
