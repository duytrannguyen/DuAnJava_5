package com.poly.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.Address;
import com.poly.model.CartItem;
import com.poly.model.Invoice;
import com.poly.model.InvoiceItem;
import com.poly.model.OrderStatus;
import com.poly.model.PaymentMethod;
import com.poly.model.Product;
import com.poly.model.Shipping;
import com.poly.model.ShoppingCart;
import com.poly.model.User;
import com.poly.repository.CartItemRepository;
import com.poly.repository.InvoiceItemRepository;
import com.poly.repository.InvoiceRepository;
import com.poly.repository.ShoppingCartRepository;
import com.poly.repository.UserRepository;
import com.poly.service.SessionService;

import jakarta.mail.internet.MimeMessage;

import org.springframework.web.bind.annotation.RequestMethod;



//controller:  clientPayment
//model: invoiceItem,
//repository: 
//view: 
//js

@Controller
public class Client_PayController {
	@Autowired
	UserRepository userRepository;
	@Autowired
	CartItemRepository cartItemRepository;
	@Autowired
	ShoppingCartRepository shoppingCartRepository;
	@Autowired
	InvoiceItemRepository invoiceItemRepository;
	@Autowired
	InvoiceRepository invoiceRepository;
	@Autowired
	SessionService sessionService;
	@Autowired
	JavaMailSender sender;
	
	@RequestMapping("/products/details/cart/pay")
	public String pay(Model model) {
	    int userId = 7; // Thay đổi ID người dùng tùy theo logic của bạn
	    // Lấy thông tin người dùng
	    User user = userRepository.findById(userId).orElse(null);
	    if (user == null) {
	        return "redirect:/login"; // Chuyển hướng đến trang lỗi nếu không tìm thấy người dùng
	    }
	    // Lấy giỏ hàng hiện tại của người dùng
	    ShoppingCart shoppingCart = shoppingCartRepository.findCurrentCartByUser(user);
	    if (shoppingCart == null) {
	        return "giohangtrong"; // Chuyển hướng đến trang lỗi nếu không tìm thấy giỏ hàng
	    }
	    // Lấy địa chỉ mặc định của người dùng
	    Address defaultAddress = user.getAddresses().stream()
	                                .filter(address -> address.isStatus())
	                                .findFirst()
	                                .orElse(null);

	    // Lưu địa chỉ mặc định vào model
	    model.addAttribute("address", defaultAddress);
	    // Lưu cart_id vào session
	    sessionService.set("cartId", shoppingCart.getCartId());
	    // Lấy các mục giỏ hàng từ giỏ hàng hiện tại
	    List<CartItem> cartItems = cartItemRepository.findByShoppingCart(shoppingCart);
	    // Thêm danh sách sản phẩm vào model
	    model.addAttribute("user", user);
	    model.addAttribute("cartItems", cartItems);
	    // Tính tổng giá trị giỏ hàng
	    double total = cartItems.stream()
	                             .mapToDouble(item -> item.getProduct().getPrice() * item.getQuantity())
	                             .sum();
	    model.addAttribute("total", total);
	    // Lưu danh sách sản phẩm vào session
	    sessionService.set("cartItems", cartItems);
	    return "client/Pay";
	}
	@PostMapping("/products/details/cart/pay")
	public String pay(@ModelAttribute("invoice") Invoice invoice, Model model,
	                  @RequestParam("cart_id") ShoppingCart cart_id,
	                  @RequestParam("status_id") int status_id,
	                  @RequestParam("payment_method_id") int payment_method_id,
	                  @RequestParam("payment_status") String payment_status,
	                  @RequestParam("shipping_id") int shipping_id,
	                  @RequestParam("totalAmount") double totalAmount) {
	    int userId = 7; // Thay đổi ID người dùng tùy theo logic của bạn
	    // Hiển thị thông tin người dùng
	    User user = userRepository.findById(userId).orElse(null);
	    if (user == null) {
	        return "redirect:/error"; // Chuyển hướng đến trang lỗi nếu không tìm thấy người dùng
	    }
	    // Cập nhật thông tin invoice
	    Shipping shipping = new Shipping();
	    shipping.setShipping_id(shipping_id);
	    OrderStatus orderStatus = new OrderStatus();
	    orderStatus.setStatusId(status_id);
	    PaymentMethod paymentMethod = new PaymentMethod();
	    paymentMethod.setPaymentMethodId(payment_method_id); // Sử dụng id từ radio button
	    invoice.setStatus(orderStatus);
	    invoice.setPaymentMethod(paymentMethod);
	    invoice.setShipping(shipping);
	    invoice.setPaymentDate(new Date());
	    invoice.setPaymentStatus(payment_status);
	    invoice.setCart(cart_id);
	    invoice.setTotalAmount(totalAmount);
	    invoiceRepository.saveAndFlush(invoice);
	    // Chuyển đổi các mục giỏ hàng thành các mục hóa đơn
	    List<CartItem> cartItems = sessionService.get("cartItems");
	    if (cartItems != null && !cartItems.isEmpty()) { // Kiểm tra xem cartItems có null hoặc rỗng không
	        for (CartItem cartItem : cartItems) {
	            InvoiceItem invoiceItem = new InvoiceItem();
	            invoiceItem.setInvoice(invoice);
	            // Gán Product từ cartItem cho invoiceItem
	            Product product = cartItem.getProduct();
	            if (product != null) {
	                invoiceItem.setProduct(product);
	                invoiceItem.setPrice(product.getPrice()); // Gán giá từ product
	            } else {
	                // Xử lý khi product là null (nếu cần thiết)
	                // Ví dụ: Bỏ qua hoặc ghi log
	                continue; // Bỏ qua và chuyển sang mục tiếp theo
	            }
	            invoiceItem.setQuantity(cartItem.getQuantity()); // Số lượng từ cartItem
	            // Lưu InvoiceItem vào cơ sở dữ liệu
	            invoiceItemRepository.saveAndFlush(invoiceItem);
	            // Xóa CartItem sau khi đã chuyển thành InvoiceItem
	            cartItemRepository.delete(cartItem);
	        }
	    }
	 // Gửi email xác nhận đơn hàng
	    try {
	        MimeMessage mimeMessage = sender.createMimeMessage();
	        MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
	        StringBuilder itemsHtml = new StringBuilder();
//	        List<InvoiceItem> invoiceDetails = invoice.getInvoiceItems();
//	        for (int i = 0; i < invoiceDetails.size(); i++) {
//	            InvoiceItem detail = invoiceDetails.get(i);
//	            itemsHtml.append("<div class='card'>")
//	                .append("<div class='row'>")
//	                .append("<p>Kiện Hàng #").append(i + 1).append("</p>")
//	                .append("<div class='col-md-4'>")
//	                .append("<img alt='").append(detail.getProduct().getProductName()).append("' src='").append(detail.getProduct().getImageId().getImageName()).append("'>")
//	                .append("</div>")
//	                .append("<div class='col-md-8'>")
//	                .append("<span>").append(detail.getProduct().getProductName()).append("</span>")
//	                .append("<p>").append(detail.getPrice()).append("VNĐ</p>")
//	                .append("<p>Số lượng: ").append(detail.getQuantity()).append("</p>")
//	                .append("</div>")
//	                .append("</div>")
//	                .append("</div><br>");
//	        }
	        mimeMessageHelper.setFrom("lyt8073@gmail.com");
	        mimeMessageHelper.setTo(user.getEmail());
	        mimeMessageHelper.setSubject("Xác nhận đơn hàng #" + invoice.getInvoiceId());
	        String htmlContent = "<!DOCTYPE html>"
	                + "<html lang='en'>"
	                + "<head>"
	                + "<meta charset='UTF-8'>"
	                + "<meta name='viewport' content='width=device-width, initial-scale=1.0'>"
	                + "<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH' crossorigin='anonymous'>"
	                + "<title>Order Confirmation</title>"
	                + "<style type='text/css'>"
	                + "body { font-family: Arial, sans-serif; }"
	                + ".container { margin-top: 50px; }"
	                + ".card { padding: 20px; }"
	                + ".card-header { background-color: #007bff; color: white; }"
	                + ".card-body { margin-top: 20px; }"
	                + ".text-center { text-align: center; }"
	                + ".fw-bold { font-weight: bold; }"
	                + ".text-primary { color: #007bff; }"
	                + "</style>"
	                + "</head>"
	                + "<body>"
	                + "<div class='container'>"
	                + "<div class='card'>"
	                + "<div class='card-header'>"
	                + "<h4>Order Confirmation</h4>"
	                + "</div>"
	                + "<div class='card-body'>"
	                + "<h5 class='text-center fw-bold text-primary'>Cảm Ơn Bạn Đã Đặt Hàng Tại QLBook</h5>"
	                + "<div class='card'>"
	                + "<p>Chào " + user.getFullName() + ",</p>"
	                + "<span>QLBook đã nhận được yêu cầu đặt hàng của bạn và đang xử lý.</span>"
	                + "</div><br>"
	                + "<div class='card'>"
	                + "<b>Đơn Hàng Được Giao đến</b> <br>"
	                + "<div class='row'>"
	                + "<div class='col-md-4'>"
	                + "Tên: " + user.getFullName() + "<br>"
	                + "Địa Chỉ: " + user.getAddresses() + "<br>"
	                + "Điện Thoại: " + user.getPhone() + "<br>"
	                + "Email: " + user.getEmail() + "<br>"
	                + "</div>"
	                + "</div>"
	                + "</div><br>"
	                
	                + "<div class='card'>"
	                + "<div class='row'>"
	                + "<div class='col-md-5'>"
	                + "<p>Thành Tiền:</p>"
	                + "<p>Phí Vận Chuyển:</p>"
	                + "<p>Giảm Giá:</p>"
	                + "<p>Tổng Cộng:</p>"
	                + "</div>"
	                + "<div class='col-md-3'>"
	                + "<p>VNĐ</p>"
	                + "<p>VNĐ</p>"
	                + "<p>VNĐ</p>"
	                + "<p>VNĐ</p>"
	                + "</div>"
	                + "<div class='col-md-3'>"
	                + "<p>" + invoice.getTotalAmount() + "</p>"
	                + "<p>" + invoice.getShipping() + "</p>"
	                + "<p>" + invoice.getDiscount() + "</p>"
	                + "<p>" + invoice.getTotalAmount() + invoice.getShipping() + invoice.getDiscount()+" VNĐ</p>"
	                + "</div>"
	                + "</div>"
	                + "</div>"
	                + "<p>Cảm ơn bạn đã mua hàng!</p>"
	                + "<p>Thông tin đơn hàng đã được gửi vào email này.</p>"
	                + "<p>Trân trọng,<br />Đội ngũ hỗ trợ của chúng tôi</p>"
	                + "<p>*Vui lòng không trả lời email này!*</p>"
	                + "</div>"
	                + "</div>"
	                + "</div>"
	                + "</body>"
	                + "</html>";
	        mimeMessageHelper.setText(htmlContent, true);
	        sender.send(mimeMessage);
	        System.out.println("Email đã được gửi đi thành công.");
	    } catch (Exception e) {
	        System.out.println("Đã xảy ra lỗi khi gửi email: " + e.getMessage());
	        e.printStackTrace();
	        // Bạn có thể thêm logic xử lý lỗi ở đây nếu cần
	    }
	    
	    sessionService.remove("cartItems");
	    return "redirect:/products/details/cart/pay/success";
	}

	@RequestMapping("/products/details/cart/pay/success")
	public String orderView() {
		return "client/PaySuccess";
	}
	
	@RequestMapping("/products/details/cart/pay/viewMAil")
	public String requestMethodName() {
		return "viewMail";
	}
	

}
