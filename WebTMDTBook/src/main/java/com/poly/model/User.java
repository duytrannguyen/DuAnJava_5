
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
	
	
	
	
	
	public User() {
		super();
	}
	public User(int usersId, String username, String fullName, String password, String profileImage, Date birthDate,
			Boolean gender, String email, String phone, String address, Role roleId, List<ShoppingCart> shoppingCarts) {
		super();
		this.usersId = usersId;
		this.username = username;
		this.fullName = fullName;
		this.password = password;
		this.profileImage = profileImage;
		this.birthDate = birthDate;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.roleId = roleId;
		this.shoppingCarts = shoppingCarts;
	}
	public int getUsersId() {
		return usersId;
	}
	public void setUsersId(int usersId) {
		this.usersId = usersId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getProfileImage() {
		return profileImage;
	}
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public Boolean getGender() {
		return gender;
	}
	public void setGender(Boolean gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Role getRoleId() {
		return roleId;
	}
	public void setRoleId(Role roleId) {
		this.roleId = roleId;
	}
	public List<ShoppingCart> getShoppingCarts() {
		return shoppingCarts;
	}
	public void setShoppingCarts(List<ShoppingCart> shoppingCarts) {
		this.shoppingCarts = shoppingCarts;
	}
	
	
}
