package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.CartItem;

public interface CartItemRepository extends JpaRepository<CartItem, Integer>{

//	@Query("select c from CartItem c where c.cartItemId.cartItemId=:cartItemId and c.productId.productId = :productId")
//	public CartItem findByCartIdAndProductId(Integer cartId, Integer productId);
}
