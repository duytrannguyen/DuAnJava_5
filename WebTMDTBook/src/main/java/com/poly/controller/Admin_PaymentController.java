package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.Invoice;
import com.poly.service.InvoiceService;

@Controller
@RequestMapping("admin/payment")
public class Admin_PaymentController {

//	@Autowired
//	private InvoiceService invoiceService;
//
//	@GetMapping("/list")
//	public String listInvoices(Model model) {
//		List<Invoice> invoices = invoiceService.getAllInvoices();
//		model.addAttribute("invoices", invoices);
//		return "admin/QuanLyHoaDon/Payment";
//	}
//
//	@GetMapping("/search")
//	public String searchInvoices(@RequestParam("searchQuery") String searchQuery, Model model) {
//		List<Invoice> searchResults = invoiceService.searchInvoices(searchQuery);
//		model.addAttribute("invoices", searchResults);
//		return "admin/QuanLyHoaDon/Payment"; 
//	}
}