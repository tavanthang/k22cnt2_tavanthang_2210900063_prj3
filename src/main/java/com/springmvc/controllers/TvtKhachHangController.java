package com.springmvc.controllers;

import com.springmvc.beans.Tvt_khachhang;
import com.springmvc.dao.Tvt_khachhangdao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/views/khachhang")
public class TvtKhachHangController {

    private final Tvt_khachhangdao khachhangdao;

    public TvtKhachHangController(Tvt_khachhangdao khachhangdao) {
        this.khachhangdao = khachhangdao;
    }

    @GetMapping("/listkh")
    public String listCustomers(Model model) {
        List<Tvt_khachhang> customers = khachhangdao.getAllCustomers();
        model.addAttribute("listKhachHang", customers);
        model.addAttribute("customer", new Tvt_khachhang());
        return "khachhang/listkh";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("customer", new Tvt_khachhang());
        return "khachhang/add";
    }

    // Phương thức POST xử lý khi submit form thanh toán
    @PostMapping("/view")
    public String saveCustomer(@ModelAttribute Tvt_khachhang customer, RedirectAttributes redirectAttributes) {
        try {
            khachhangdao.saveCustomer(customer);
            redirectAttributes.addFlashAttribute("message", "Đặt hàng thành công!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Lỗi khi đặt hàng!");
        }
        // Redirect đến URL mapping GET /thanhtoan
        return "redirect:/views/khachhang/thanhtoan";

    }

    // Mapping hiển thị trang thông báo thanh toán thành công
    @GetMapping("/thanhtoan")
    public String showThanhtoan(Model model) {
        // Nếu có flash attribute "message" thì view có thể hiển thị thông báo
        return "khachhang/thanhtoan"; // JSP file: WEB-INF/views/khachhang/thanhtoan.jsp
    }

    @GetMapping("/delete/{id}")
    public String deleteCustomer(@PathVariable int id) {
        khachhangdao.deleteCustomer(id);
        return "redirect:/SpringMVCPagination/views/khachhang/listkh";
    }
}
