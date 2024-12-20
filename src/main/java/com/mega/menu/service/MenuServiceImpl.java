package com.mega.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.MenuNutrientDto;
import com.mega.menu.dto.NutrientDto;
import com.mega.menu.dto.TypeDto;
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
	public List<AllergenDto> getAllegenList() throws Exception {
		// TODO Auto-generated method stub
		return menuMapper.getAllegenList();
	}

//    @Override
//    public List<AllergenDto> getAllergen(int menu_id) throws Exception {
//        return menuMapper.getAllergen(menu_id);
//    }

	@Override
	public List<MenuDto> menuList(Integer category_id) {
		return menuMapper.menuList(category_id);
	}

	@Override
	public MenuNutrientDto getMenuNutrient(int menu_id) throws Exception {
		// TODO Auto-generated method stub
		return menuMapper.getMenuNutrient(menu_id);
	}

	@Override
	public List<TypeDto> getType(int menu_id) throws Exception {
		// TODO Auto-generated method stub
		return menuMapper.getType(menu_id);
	}

	@Override
	public List<AllergenDto> getAllergen(int menu_id) throws Exception {
		// TODO Auto-generated method stub
		return menuMapper.getAllergen(menu_id);
	}

	@Override
	public List<TypeDto> getTypeList() throws Exception {
		// TODO Auto-generated method stub
		return menuMapper.getTypeList();
	}

}
