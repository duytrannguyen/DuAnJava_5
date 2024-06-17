package com.poly.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.poly.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
	@Query("SELECT COUNT(p) FROM Product p")
	int countTotalProducts();

	@Query("SELECT p.productName, i.quantity, os.statusName " + "FROM Product p " + "JOIN p.invoiceItems i "
			+ "JOIN i.invoice iv " + "JOIN iv.status os " + "WHERE p.productName IS NOT NULL")
	List<Object[]> findProductNamesWithStatusAndQuantity();

	Optional<Product> findByProductId(Integer productId);

	boolean existsByProductName(String productName);
//	lọc sản phẩm
	List<Product> findByCategoryCategoryId(int categoryId);

}
