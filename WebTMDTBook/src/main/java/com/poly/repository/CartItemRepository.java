package com.poly.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.model.CartItem;
import com.poly.model.Product;
import com.poly.model.ShoppingCart;

public interface CartItemRepository extends JpaRepository<CartItem, Integer> {
	
    List<CartItem> findByCartId(ShoppingCart cartId, Sort sort);

    @Query("select c from CartItem c where c.cartId = :cartId and c.productId.productId = :productId")
    CartItem findByCartIdAndProductId(@Param("cartId") ShoppingCart cartId, @Param("productId") Integer productId, Sort sort);
}

