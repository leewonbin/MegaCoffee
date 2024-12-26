package com.mega.menu.service;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.MenuInfoDto;
import com.mega.menu.dto.MenuNutrientDto;
import com.mega.menu.dto.NutrientDto;
import com.mega.menu.dto.TypeDto;
import com.mega.menu.mapper.MenuMapper;

@Service
public class MenuServiceImpl implements MenuService {
	final String UPLOAD_PATH = System.getProperty("user.dir") + "/src/main/resources/static/img/";

	@Autowired
	private MenuMapper menuMapper;

//	@Override
//	public List<MenuDto> menuList() throws Exception {
//		return menuMapper.menuList();
//	}

//	@Override
//	public MenuInfoDto menuRead(int menu_id) throws Exception {
//		return menuMapper.menuRead(menu_id);
//	}

	@Override
	public NutrientDto getNutrient(int menu_id) throws Exception {
		return menuMapper.getNutrient(menu_id);
	}//

	@Override
	public List<AllergenDto> getAllegenList() throws Exception {
		return menuMapper.getAllegenList();
	}

	@Override
	public List<MenuInfoDto> filterType(int category_id, String typeIdStr) throws Exception {
		return menuMapper.filterType(category_id, typeIdStr);
	}

	@Override
	public List<MenuInfoDto> menuList(Integer category_id) throws Exception {
		return menuMapper.menuList(category_id);
	}

	@Override
	public Map<String, Object> getMenuNutrient(int menu_id) throws Exception {
		return menuMapper.getMenuNutrient(menu_id);
	}

	@Override
	public List<TypeDto> getType(int menu_id) throws Exception {
		return menuMapper.getType(menu_id);
	}

	@Override
	public List<AllergenDto> getAllergen(int menu_id) throws Exception {
		return menuMapper.getAllergen(menu_id);
	}

	@Override
	public List<TypeDto> getTypeList() throws Exception {
		// TODO Auto-generated method stub
		return menuMapper.getTypeList();
	}

	@Override
	public String uploadFile(MultipartFile file) throws Exception {
		String saveName = UUID.randomUUID() + file.getOriginalFilename();

		File newFile = new File(UPLOAD_PATH + "/" + saveName);
		file.transferTo(newFile);

		return saveName;
	}

	@Override
	public void deleteFile(String menu_file_id) throws Exception {
		File beforeFile = new File(UPLOAD_PATH + "/" + menu_file_id);
		if (beforeFile.exists())
			beforeFile.delete();
	}

	@Override
	public int insertMenu(MenuNutrientDto menuNutrientDto, List<String> typeIdList, List<String> allergenIdList)
			throws Exception {
		return menuMapper.insertMenu(menuNutrientDto, typeIdList, allergenIdList);
	}

	@Override
	public int modifyMenu(MenuNutrientDto menuNutrientDto) throws Exception {
		return menuMapper.modifyMenu(menuNutrientDto);
	}

	@Override
	public int modifyType(int menu_id, List<String> typeIdList) throws Exception {
		return menuMapper.modifyType(menu_id, typeIdList);

	}

	@Override
	public int modifyallergen(int menu_id, List<String> allergenIdList) throws Exception {
		return menuMapper.modifyallergen(menu_id, allergenIdList);
	}

	@Override
	public List<MenuDto> getMenuAllList(String category) throws Exception {
		return menuMapper.getMenuAllList(category);
	}

	@Override
	public int deleteMenu(int menu_id) throws Exception {
		// TODO Auto-generated method stub
		return menuMapper.deleteMenu(menu_id);
	}

}
