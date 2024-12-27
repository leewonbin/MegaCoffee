package com.mega.menu.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuInfoDto;
import com.mega.menu.dto.TypeDto;
import com.mega.menu.service.MenuService;

@Controller
public class MenuController {

	@Autowired
	private MenuService menuService;

	@GetMapping("/")
	public String main() {
		return "redirect:/main";
	}

//	@ResponseBody
//	@GetMapping("/read")
//	public MenuInfoDto menuInfo(@RequestParam int menu_id) throws Exception {
//		
//		MenuNutrientDto menuNutrient = menuService.getMenuNutrient(menu_id);
//		List<AllergenDto> allergen = menuService.getAllergen(menu_id);
//		return new MenuInfoDto(menuNutrient, allergen);
//	}

	@ResponseBody
	@GetMapping("/read")
	public MenuInfoDto menuInfo(@RequestParam int menu_id) throws Exception {
		Map<String, Object> menuNutrient = menuService.getMenuNutrient(menu_id);
		List<AllergenDto> allergen = menuService.getAllergen(menu_id);
		return new MenuInfoDto(menuNutrient, allergen);
	}

	@GetMapping("/main")
	public String list(Model model) throws Exception {
//		List<MenuDto> menuList = menuService.menuList();
//		System.out.println(menuList.size());
//		model.addAttribute("menuList", menuList);
		return "redirect:/menu";
	}

	@GetMapping("/menu")
	public String getCategory(@RequestParam(required = false) Integer category_id, Model model) throws Exception {

		List<MenuInfoDto> menuList = menuService.menuList(category_id);
		List<TypeDto> typeList = menuService.getTypeList();

		List<TypeDto> filterList = new ArrayList<>();

		if (category_id != null) {
			if (category_id == 1) {
				for (TypeDto type : typeList) {
					if (type.getType_id() == 1 || type.getType_id() == 2 || type.getType_id() == 3
							|| type.getType_id() == 4 || type.getType_id() == 5 || type.getType_id() == 6
							|| type.getType_id() == 8) {
						filterList.add(type);
					}
				}
			} else if (category_id == 2) {
				for (TypeDto type : typeList) {
					if (type.getType_id() == 7 || type.getType_id() == 8) {
						filterList.add(type);
					}
				}
			}
		}

		model.addAttribute("menuList", menuList);
		model.addAttribute("typeList", filterList);
		System.out.println(menuList);
		return "menu/menu";
	}

//	@ResponseBody
//	@GetMapping("/filterType")
//	public List<MenuInfoDto> filterType(@RequestParam int category_id, @RequestParam List<String> type_id) throws Exception {
//		System.out.println("필터아이디: " + type_id);
//
//		if (type_id.isEmpty() || type_id.contains("0")) {
//			System.out.println("전체 메뉴 불러오는지 테스트");
//			return menuService.menuList(category_id);
//		}
//
//		String typeArr = type_id.toString().replaceAll("\\[", "").replaceAll("\\]", "").replaceAll("\\s", "");
//		return menuService.filterType(category_id, typeArr);
//	}
	@ResponseBody
	@GetMapping("/filterType")
	public List<MenuInfoDto> filterType(@RequestParam int category_id, @RequestParam List<String> type_id)
			throws Exception {
		System.out.println("필터아이디: " + type_id);

		List<MenuInfoDto> menuList;

		if (type_id.isEmpty() || type_id.contains("0")) {
			System.out.println("전체 메뉴 불러오는지 테스트");
			menuList = menuService.menuList(category_id); // 전체 메뉴 가져오기
		} else {
			String typeArr = type_id.toString().replaceAll("\\[", "").replaceAll("\\]", "").replaceAll("\\s", "");
			menuList = menuService.filterType(category_id, typeArr); // 필터링된 메뉴 가져오기
		}

		return menuList;
	}

}
