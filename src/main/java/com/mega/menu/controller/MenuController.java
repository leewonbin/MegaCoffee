package com.mega.menu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuInfoDto;
import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.NutrientDto;
import com.mega.menu.service.MenuService;

@Controller
public class MenuController {

	@Autowired
	private MenuService menuService;

//	@GetMapping("/main")
//	public String main() {
//		return "menu";
//	}

//	@GetMapping("/read")
//	public String menuRead(@RequestParam int menu_id, Model model) throws Exception {
//		MenuDto menu = menuService.menuRead(menu_id);
//		
//		model.addAttribute("menu", menu);
//		
//		return "menu";
//	}

//	@ResponseBody
//	@GetMapping("/read")
//	public MenuDto menuRead(@RequestParam int menu_id) throws Exception {
//	    return menuService.menuRead(menu_id);
//	}

	@ResponseBody
	@GetMapping("/read")
	public MenuInfoDto menuInfo(@RequestParam int menu_id) throws Exception {
		MenuDto menu = menuService.menuRead(menu_id);
		NutrientDto nutrient = menuService.getNutrient(menu_id);
		return new MenuInfoDto(menu, nutrient);
	}

//	@ResponseBody
//    @GetMapping("/read")
//    public MenuInfoDto menuInfo(@RequestParam int menu_id) throws Exception {
//        MenuDto menu = menuService.menuRead(menu_id);
//        NutrientDto nutrient = menuService.getNutrient(menu_id);
//        List<AllergenDto> allergens = menuService.getAllergens(menu_id);
//
//        return new MenuInfoDto(menu, nutrient, allergens);
//    }

	@GetMapping("/main") // 카테고리 페이지 비동기 전환...통합
	public String list(Model model) throws Exception {
		List<MenuDto> menuList = menuService.menuList();
		System.out.println(menuList.size());
		model.addAttribute("menuList", menuList);
		return "menu/menu";
	}


}
