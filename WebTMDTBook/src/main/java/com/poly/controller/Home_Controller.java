package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dto.LoginDTO;
import com.poly.dto.RegisterDTO;
import com.poly.model.Product;
import com.poly.model.User;
import com.poly.service.InvoiceService;
import com.poly.service.ProductService;
import com.poly.service.SessionService;
import com.poly.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("home")
public class Home_Controller {

	@Autowired
	private UserService userService;

	@Autowired
	private SessionService sessionService;

	@Autowired
	private ProductService productService;

	@Autowired
	private InvoiceService invoiceService;

	@GetMapping("/login")
	public String Login() {
		return "login/logintest";
	}

	@PostMapping("/login")
	public String login(@ModelAttribute LoginDTO loginDTO, Model model, HttpSession session) {
		// Kiểm tra xem loginDTO có hợp lệ không
		if (loginDTO == null || loginDTO.getUsername() == null || loginDTO.getPassword() == null) {
			model.addAttribute("mess", "Invalid credentials");

			return "/login/logintest";
		}

		// Gọi phương thức login từ userService để kiểm tra thông tin đăng nhập
		boolean result = userService.login(loginDTO);
		if (result) {
			// Lấy thông tin người dùng từ phiên làm việc
			User user = (User) sessionService.get("current_account");

			// Kiểm tra xem người dùng có tồn tại và có vai trò hợp lệ không
			if (user != null && user.getRoleId() != null) {
				if (user.getRoleId().equals("1")) {
					// Điều hướng đến trang quản trị nếu người dùng là admin
					return "redirect:/admin/products/list";
				} else {
					// Điều hướng đến trang chính nếu người dùng không phải là admin
					return "redirect:/home/index";
				}
			} else {
				// Thêm thông báo lỗi nếu không tìm thấy thông tin người dùng
				model.addAttribute("mess", "User not found");
				return "/login/logintest";
			}
		}

		// Thêm thông báo lỗi nếu thông tin đăng nhập không hợp lệ
		model.addAttribute("mess", "Invalid credentials");
		return "/login/logintest";
	}

	@RequestMapping("/dangky")
	public String register() {
		return "login/registertest";
	}

	@PostMapping("/dangky")
	public String register(@ModelAttribute RegisterDTO registerDTO, Model model) {
		boolean result = userService.register(registerDTO);
		if (result) {
			model.addAttribute("mess", "Account created successfully");
		} else {
			model.addAttribute("mess", "Username already exists");
		}
		return "login/registertest";
	}

	@RequestMapping("/login/quenmk")
	public String forgotPassword() {
		return "login/forgotPassword";
	}

	@RequestMapping("/login/quenmk/hoantat")
	public String finishForgotPassword() {
		return "login/finishForgotPassword";
	}

	@RequestMapping("/home/doimk")
	public String changePassword() {
		return "users/changePassword";
	}

	@RequestMapping("/home/sanpham")
	public String sanPham() {
		return "admin/sanPham";
	}

	@GetMapping("/admin")
	public String homeAdmin() {
		return "indexAdmin";
	}

	@GetMapping("/report")
	public String listProducts(Model model) {
		int totalCustomers = userService.getTotalUsers();
		int totalProducts = productService.getTotalProducts();
//        Double totalAmount = invoiceService.getTotalAmount();
//        Long totalDeliveredOrders = invoiceService.getTotalDeliveredOrders();

		List<Product> products = productService.getAllProducts();
		model.addAttribute("products", products);

		model.addAttribute("totalCustomers", totalCustomers);
		model.addAttribute("totalProducts", totalProducts);
//        model.addAttribute("totalAmount", totalAmount);
//        model.addAttribute("totalDeliveredOrders", totalDeliveredOrders);

		return "admin/BaoCaoThongKe/Report";
	}
}
