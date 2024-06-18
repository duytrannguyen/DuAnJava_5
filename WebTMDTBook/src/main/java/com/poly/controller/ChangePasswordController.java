package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.User;
import com.poly.model.Users;
import com.poly.service.ChangePasswordService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/password")
public class ChangePasswordController {

	@Autowired
    private ChangePasswordService passwordChangeService;

    @GetMapping("/change")
    public String showChangePasswordForm(Model model) {
        model.addAttribute("passwordChangeRequest", new PasswordChangeRequest());
        return "change-password";
    }

    
    
    @PostMapping("/changepassword")
	public String changePasswordSubmit(Model model, HttpSession session,
	                                    @RequestParam("oldPassword") String oldPassword,
	                                    @RequestParam("newPassword") String newPassword,
	                                    @RequestParam("confirmPassword") String confirmPassword) {
	    Users users = (Users) session.getAttribute("username");
	    if (users == null) {
	        return "redirect:/auth/login";  // Redirect to login if not logged in
	    }

	    // Validation checks
	    if (!users.getPassword().equals(oldPassword)) {
	        model.addAttribute("message1", "Mật khẩu cũ không chính xác!");
	        return "user/changepassword"; // Redirect back to form with error message
	    }

	    if (newPassword.isEmpty() || newPassword.length() < 8) { // Check for empty or weak password
	        model.addAttribute("message2", "Mật khẩu mới phải dài ít nhất 8 ký tự!");
	        return "user/changepassword"; // Redirect back to form with error message
	    }

	    if (!newPassword.equals(confirmPassword)) {
	        model.addAttribute("message3", "Mật khẩu mới không khớp!");
	        return "user/changepassword"; // Redirect back to form with error message
	    }

	    // Update password in database
	    Users.setPassword(newPassword);
	    Users.saveAndFlush(username);

	    model.addAttribute("message4", "Đổi mật khẩu thành công!");
	    return "user/changepassword";  // Redirect back to change password form with success message
	}
}
