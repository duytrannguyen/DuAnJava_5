package com.poly.service.lmpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.model.Invoice;
import com.poly.repository.InvoiceRepository;
import com.poly.service.InvoiceService;

@Service
public class InvoiceServiceImpl implements InvoiceService {

	@Autowired
	private InvoiceRepository invoiceRepository;
//
	@Override
	public List<Invoice> getAllInvoices() {
		return invoiceRepository.findAll();
	}

	@Override
	public Double getTotalAmount() {
		return invoiceRepository.findTotalAmount();
	}

	@Override
	public Long getTotalOrders() {
		return invoiceRepository.countTotalOrders();
	}

	@Override
	public List<Invoice> searchInvoices(String searchQuery) {
		Integer invoiceId = null;
		try {
			invoiceId = Integer.parseInt(searchQuery);
		} catch (NumberFormatException e) {
			// Do nothing, invoiceId will be null
		}
		return invoiceRepository.findByInvoiceIdOrCartUserFullNameContaining(invoiceId, searchQuery);
	}
}
