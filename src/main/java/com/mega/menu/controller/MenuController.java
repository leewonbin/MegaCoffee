package com.mega.menu.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.MenuInfoDto;
import com.mega.menu.dto.NutrientDto;
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

	@GetMapping("/main")
	public String list(Model model) throws Exception {
		List<MenuDto> menuList = menuService.menuList();
		System.out.println(menuList.size());
		model.addAttribute("menuList", menuList);
		return "menu/menu";
	}

	@GetMapping("/menu")
	public String getCategory(@RequestParam(required = false) Integer category_id, Model model) throws Exception {
	    List<MenuDto> menuList = menuService.menuList(category_id);
	    List<TypeDto> typeList = menuService.getTypeList();
	    
	    List<TypeDto> filterList = new ArrayList<>();
	    
	    if (category_id != null) {
	        if (category_id == 1) {
	            for (TypeDto type : typeList) {
	                if (type.getType_id() == 1 || type.getType_id() == 2 || 
	                    type.getType_id() == 3 || type.getType_id() == 4 || 
	                    type.getType_id() == 5 || type.getType_id() == 6 || 
	                    type.getType_id() == 8) {
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
	    return "menu/menu";
	}

	
	
	@ResponseBody
	@GetMapping("/filterType") // List<Integer>
	public List<MenuDto> filterType(@RequestParam int category_id, @RequestParam List<Integer> type_id)
			throws Exception {
		System.out.println("필터아이디: " + type_id);
		String typeArr = type_id.toString().replaceAll("\\[", "").replaceAll("\\]", "");
		return menuService.filterType(category_id, typeArr);
	}

//	@GetMapping("/menu/types")
//	public String getTypeList(Model model) throws Exception {
//	    List<TypeDto> typeList = menuService.getTypeList();
//	    model.addAttribute("typeList", typeList);
//	    return "menu/menu";
//	}

}
