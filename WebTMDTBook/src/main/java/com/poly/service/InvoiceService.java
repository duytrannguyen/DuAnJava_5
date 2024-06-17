package com.poly.service;

import java.util.List;

import com.poly.model.Invoice;

public interface InvoiceService {

	List<Invoice> getAllInvoices();

	List<Invoice> searchInvoices(String searchQuery);
	Long getTotalOrders();

	Double getTotalAmount();
}
