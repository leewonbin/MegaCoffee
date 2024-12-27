package com.mega.admin.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mega.admin.dto.AdminDto;
import com.mega.admin.service.AdminService;
import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.TypeDto;
import com.mega.menu.service.MenuService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@Autowired
	private MenuService menuService;

	@GetMapping("/moveLogin")
	public String moveLoginPage() throws Exception {
		return "/admin/adminLogin";
	}

	@GetMapping("/moveInsert")
	public String moveInsert(Model model) throws Exception {
		model.addAttribute("typeList", menuService.getTypeList());
		model.addAttribute("allergenList", menuService.getAllegenList());
		return "/admin/productManage";
	}

	@GetMapping("/moveModify")
	public String moveModify(@RequestParam("menu_id") int menu_id, Model model) throws Exception {
		Map<String, Object> mnDto = menuService.getMenuNutrient(menu_id);
		List<TypeDto> typeList = menuService.getType(menu_id);
		List<AllergenDto> allergenList = menuService.getAllergen(menu_id);

		model.addAllAttributes(mnDto);
		model.addAttribute("selectTypeList", typeList);
		model.addAttribute("selectAllergenList", allergenList);

		model.addAttribute("typeList", menuService.getTypeList());
		model.addAttribute("allergenList", menuService.getAllegenList());
		return "/admin/productManage";
	}

	@GetMapping("/moveMenu")
	public String moveMenu(@RequestParam("category") String category) throws Exception {
		return "redirect:/admin/product?category=" + category;
	}

	@GetMapping("/product")
	public String moveProduct(@RequestParam(value = "category", required = false) String category, Model model)
			throws Exception {
		category = category == null ? "" : category;
		List<MenuDto> menuList = menuService.getMenuAllList(category);
		model.addAttribute("menuList", menuList);
		return "/admin/product";
	}

	@GetMapping("/productDetail")
	public String movePDetail(@RequestParam("menu_id") int menu_id, Model model) throws Exception {
		Map<String, Object> mnDto = menuService.getMenuNutrient(menu_id);
		List<TypeDto> typeList = menuService.getType(menu_id);
		List<AllergenDto> allergenList = menuService.getAllergen(menu_id);
		model.addAllAttributes(mnDto);
		model.addAttribute("typeList", typeList);
		model.addAttribute("allergenList", allergenList);
		return "/admin/productDetail";
	}

	@PostMapping("/login")
	public String loginProcess(@RequestParam("admin_id") String admin_id, @RequestParam("admin_pw") String admin_pw,
			RedirectAttributes rttr) throws Exception {
		AdminDto dto = adminService.loginProcess(admin_id, admin_pw);

		String redirectUrl = dto == null ? "redirect:/admin/moveLogin" : "redirect:/admin/product";
		String msg = dto == null ? "아이디 또는 패스워드가 일치하지 않습니다." : "로그인 되었습니다.";

		rttr.addFlashAttribute("msg", msg);
		return redirectUrl;
	}

	@PostMapping("/productInsert")
	public String saveMenu(@RequestParam Map<String, Object> menuInfo,
			@RequestParam(value = "type_id", required = false) String[] typeIds,
			@RequestParam(value = "all_id", required = false) String[] allergenIds,
			@RequestParam(value = "menu_img") MultipartFile menuFile) throws Exception {
		String fileSaveName = menuService.uploadFile(menuFile);
		menuInfo.put("menu_file_id", fileSaveName);
		List<String> typeIdList = typeIds == null ? new ArrayList<String>() : Arrays.asList(typeIds);
		List<String> allergenIdList = allergenIds == null ? new ArrayList<String>() : Arrays.asList(allergenIds);
		menuService.insertMenu(menuInfo, typeIdList, allergenIdList);
		return "redirect:/admin/product";
	}

	@PostMapping("/productModify")
	public String modifyMenu(@RequestParam Map<String, Object> menuInfo,
			@RequestParam(value = "type_id") String[] typeIds,
			@RequestParam(value = "all_id", required = false) String[] allergenIds,
			@RequestParam(value = "menu_img", required = false) MultipartFile menuFile) throws Exception {

		if (!menuFile.isEmpty()) {
			menuService.deleteFile((String) menuInfo.get("menu_file_id"));
			String fileSaveName = menuService.uploadFile(menuFile);
			menuInfo.put("menu_file_id", fileSaveName);
		}

		List<String> typeIdList = typeIds == null ? new ArrayList<String>() : Arrays.asList(typeIds);
		List<String> allergenIdList = allergenIds == null ? new ArrayList<String>() : Arrays.asList(allergenIds);

		menuService.modifyMenu(menuInfo);
		menuService.modifyType(Integer.parseInt((String) menuInfo.get("menu_id")), typeIdList);
		menuService.modifyallergen(Integer.parseInt((String) menuInfo.get("menu_id")), allergenIdList);
		return "redirect:/admin/product";
	}

	@GetMapping("/productDelete")
	public String deleteMenu(@RequestParam("menu_id") int menu_id, RedirectAttributes rttr) throws Exception {
		int result = menuService.deleteMenu(menu_id);
		String msg = result == 1 ? "삭제 완료 되었습니다." : "삭제에 실패했습니다. 다시 시도해주세요.";
		rttr.addFlashAttribute("msg", msg);
		return "redirect:/admin/product";
	}

}
