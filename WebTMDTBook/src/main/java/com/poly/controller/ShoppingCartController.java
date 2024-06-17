package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.CartItem;
import com.poly.model.Product;
import com.poly.model.ShoppingCart;
import com.poly.model.User;
import com.poly.repository.CartItemRepository;
import com.poly.repository.ProductRepository;
import com.poly.repository.ShoppingCartRepository;
import com.poly.repository.UserRepository;

@Controller
public class ShoppingCartController {

	@Autowired
	UserRepository userRepository;
	
	@Autowired
	ProductRepository productRepository;
	
	@Autowired
	ShoppingCartRepository shoppingCartRepository;
	
	@Autowired
	CartItemRepository cartItemRepository;
	
//	@RequestMapping("/home/products/details/cart/{productCode}")
//	public String addCart(Model model, @PathVariable("productCode") String productCode, Integer  cartId) {
//		
//	    String username = "TanNN";
////	    Integer cartId  = 1;
//	    User user = userRepository.findById(username).get();
//	    ShoppingCart shoppingCart = shoppingCartRepository.findByAccountId(username);
//	    Product product = productRepository.findById(productCode).get();
//	    CartItem cartItem = cartItemRepository.findByCartIdAndProductId(cartId, productCode);
//
//	    if (cartItem == null || shoppingCart == null) {
//	    	cartItem = new CartItem();
//	    	shoppingCart = new ShoppingCart();
//	    	shoppingCart.setUser(user);
//	    	cartItem.setCartId(shoppingCart);
//	    	cartItem.setProductCode(product);
//	    	cartItem.setQuantity(1);
//	    } else {
//	    	cartItem.setQuantity(cartItem.getQuantity() + 1);
//	    }
//
//	    cartItemRepository.saveAndFlush(cartItem);
//
//	    List<CartItem> cartItems = cartItemRepository.findAll();
//	    model.addAttribute("cartItems", cartItems);
//
//	    return "client/Cart";
//	}
	
	
	
//	@PostMapping("/cart/update")
//	public String updateCart(Model model, @RequestParam("id")Integer id,@RequestParam("qty") int qty) {
//		
//		ShoppingCart shoppingCart = shoppingCartRepository.findById(id).get();
//		shoppingCart.setQuantity(qty);
//		shoppingCartRepository.saveAndFlush(shoppingCart);
//		List<ShoppingCart> shoppingCarts = shoppingCartRepository.findAll();
//		model.addAttribute("shoppingCarts", shoppingCarts);
//		return "client/Cart";
//	}
//	
//	@GetMapping("/cart/remove/{id}")
//	public String removeCart(Model model, @PathVariable("id")Integer id) {
//		
//		ShoppingCart cartDetail = shoppingCartRepository.findById(id).get();
//		
//		shoppingCartRepository.delete(cartDetail);
//		List<ShoppingCart> cartDetails = shoppingCartRepository.findAll();
//		model.addAttribute("cartDetails", cartDetails);
//		return "client/Cart";
//	}
}
