package com.poly.model;

import java.util.Date;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Table(name = "Discounts")
public class Discount {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	     Integer discountId;

	    @Column
	     String discountCode;

	    @Column(nullable = false)
	     Integer quantity;

	    @ManyToOne
	    @JoinColumn(name = "discountTypeId", nullable = false)
	     DiscountType discountType;

	    @Column(nullable = false)
	     Date startDate;

	    @Column(nullable = false)
	     Date endDate;

	    @Column(nullable = false)
	     Double minInvoiceAmount;
}