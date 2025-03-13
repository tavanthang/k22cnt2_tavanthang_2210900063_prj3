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
        model.addAttribute("customer", new Tvt_khachhang()); // Quan trọng để tránh lỗi BindingResult
        return "khachhang/listkh";
    }


    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("customer", new Tvt_khachhang());
        return "khachhang/add"; // Đảm bảo file JSP tồn tại
    }



    @PostMapping("/save")
    public String saveCustomer(@ModelAttribute Tvt_khachhang customer, RedirectAttributes redirectAttributes) {
        try {
            khachhangdao.saveCustomer(customer);
            redirectAttributes.addFlashAttribute("message", "Đặt hàng thành công!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Lỗi khi đặt hàng!");
        }
        return "redirect:/views/viewform"; // Chuyển về trang sản phẩm
    }
    @GetMapping("/view")
    public String showViewForm(Model model) {
        model.addAttribute("message", "Đặt hàng thành công!");
        return "khachhang/view"; // Tên file JSP (WEB-INF/views/viewform.jsp)
    }
    @GetMapping("/delete/{id}")
    public String deleteCustomer(@PathVariable int id) {
    	khachhangdao.deleteCustomer(id);
        return "redirect:/khachhang/listkh";
    }
}
