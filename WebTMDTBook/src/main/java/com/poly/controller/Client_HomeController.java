package com.poly.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.CartItem;
import com.poly.model.Image;
import com.poly.model.Product;
import com.poly.model.ShoppingCart;
import com.poly.repository.CartItemRepository;
import com.poly.repository.ImageRepository;
import com.poly.repository.ProductRepository;
import com.poly.repository.ShoppingCartRepository;
import com.poly.service.ProductService;

@Controller
@RequestMapping("home")
public class Client_HomeController {

	@Autowired
	ProductRepository productRepository;

	@Autowired
	ImageRepository imageRepository;

	@Autowired
	CartItemRepository cartItemRepository;

	@Autowired
	ShoppingCartRepository shoppingCartRepository;
	@Autowired
	private ProductService productService;

	@GetMapping("/index")
	public String home(Model model) {
		List<Product> products = productService.getAllProducts();
		model.addAttribute("products", products);
		return "indexClient";
	}

	@GetMapping("/tieuthuyet")
	public String locThieuThuyet(Model model) {
		int id = 2;
		List<Product> products = productService.getProductsByCategoryId(id);
		model.addAttribute("products", products);
		return "client/Product";
	}

	@GetMapping("/about")
	public String about() {
		return "client/About";
	}


	@GetMapping("/products")
	public String products(Model model, @RequestParam("pageNo") Optional<Integer> pageNo) {
		Sort sort = Sort.by(Direction.DESC, "productId");
		Pageable pageable = PageRequest.of(pageNo.orElse(0), 4, sort);
		Page<Product> page = productRepository.findAll(pageable);

		List<Integer> totalPages = new ArrayList<Integer>();
		for (int i = 0; i < page.getTotalPages(); i++) {
			totalPages.add(i + 1);
		}

		List<Product> products = page.getContent();

		model.addAttribute("totalPageProduct", totalPages);
		model.addAttribute("pageProduct", page);
		model.addAttribute("pageClick", pageNo.orElse(0));

		model.addAttribute("products", products);

		return "client/Product";
	}

	@GetMapping("/products/details/{productId}")
	public String productDetails(Model model, @PathVariable("productId") Integer productId,
			@RequestParam("pageNo") Optional<Integer> pageNo) {

		Sort sort = Sort.by(Direction.DESC, "productId");
		Pageable pageable = PageRequest.of(pageNo.orElse(0), 4, sort);
		Page<Product> page = productRepository.findAll(pageable);

		List<Integer> totalPages = new ArrayList<Integer>();
		for (int i = 0; i < page.getTotalPages(); i++) {
			totalPages.add(i + 1);
		}

		List<Product> products = page.getContent();

		model.addAttribute("totalPageProduct", totalPages);
		model.addAttribute("pageProduct", page);
		model.addAttribute("pageClick", pageNo.orElse(0));

		Product product = productRepository.findById(productId).get();
		model.addAttribute("product", product);

		model.addAttribute("products", products);

		return "client/ProductDetails";

	}

	@GetMapping("products/details/cart")
	public String Cart(Model model) {

		List<CartItem> cartItemts = cartItemRepository.findAll(Sort.by(Direction.DESC, "cartItemId"));
		model.addAttribute("cartItemts", cartItemts);

		return "client/Cart";
	}

	@GetMapping("/products/details/cart/pay")
	public String Pay() {
		return "client/Pay";
	}

	


}
