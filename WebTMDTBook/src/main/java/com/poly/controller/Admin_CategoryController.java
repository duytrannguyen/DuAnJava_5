package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.Category;
import com.poly.repository.CategoryRepository;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("admin")
public class Admin_CategoryController {

	CategoryRepository categoryRepository;

	@Autowired
	public Admin_CategoryController(CategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}

	@GetMapping("/Category")
	public String showCategories(Model model, HttpServletRequest req) {
		List<Category> categories = categoryRepository.findAll();
		model.addAttribute("categories", categories);
		req.setAttribute("view", "/views/admin/QuanLyTheLoai/index.jsp");
		return "indexAdmin";
	}

	@PostMapping("/Category/create")
	public String addCategory(@ModelAttribute Category category) {
		categoryRepository.save(category);
		return "redirect:/admin/Category";
	}
	@GetMapping("/Category/edit/{categoryId}")
	public String edit(Model model, @PathVariable("categoryId") Integer id) {
		Category item = categoryRepository.findById(id).get();
		model.addAttribute("item", item);
		List<Category> items = categoryRepository.findAll();
		model.addAttribute("items", items);
		return "redirect:/admin/Category";
	}
}
