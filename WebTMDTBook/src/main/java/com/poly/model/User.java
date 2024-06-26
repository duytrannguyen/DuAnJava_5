
package com.poly.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
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
@Table(name = "Users", schema = "dbo", catalog = "DUANTN")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int usersId;

	@Column(nullable = false)
	private String username;

	@Column(nullable = false)
	private String fullName;

	@Column(nullable = false)
	private String password;

	@Column(nullable = false)
	private String profileImage;

	@Column(nullable = false)
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthDate;

	@Column(nullable = false)
	private Boolean gender;

	@Column(nullable = false)
	private String email;

	@Column(nullable = false)
	private String phone;

	@Column(nullable = false)
	private String address;

	@ManyToOne
	@JoinColumn(name = "roleId", nullable = false)
	private Role roleId;
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<ShoppingCart> shoppingCarts = new ArrayList<>();
}
