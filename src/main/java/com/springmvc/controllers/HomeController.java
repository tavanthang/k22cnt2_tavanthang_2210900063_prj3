package com.springmvc.controllers;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.springmvc.beans.Tvt_giohang;
import com.springmvc.beans.Tvt_sanpham;
import com.springmvc.dao.Tvt_sanphamdao;

@Controller
public class HomeController {

    @Autowired
    Tvt_sanphamdao dao; // Inject DAO để thao tác dữ liệu

    // Hiển thị giỏ hàng
    @GetMapping("/giohang")
    public String showCart(HttpSession session, Model model) {
        List<Tvt_giohang> cartItems = (List<Tvt_giohang>) session.getAttribute("cartItems");
        if (cartItems == null) {
            cartItems = new ArrayList<>();
        }
        model.addAttribute("cartItems", cartItems);
        model.addAttribute("totalAmount", calculateTotal(cartItems));
        return "giohang";  // file JSP: WEB-INF/views/giohang.jsp
    }

    // Thêm sản phẩm vào giỏ hàng
    @GetMapping("/add-to-cart")
    public String addToCart(@RequestParam int id,
                            @RequestParam String tvt_name,
                            @RequestParam String tvt_hinhanh,
                            @RequestParam int tvt_gia,
                            HttpSession session) {

        List<Tvt_giohang> cartItems = (List<Tvt_giohang>) session.getAttribute("cartItems");
        if (cartItems == null) {
            cartItems = new ArrayList<>();
        }

        boolean exists = false;
        for (Tvt_giohang item : cartItems) {
            if (item.getId() == id) {
                item.setTvt_soluong(item.getTvt_soluong() + 1);
                exists = true;
                break;
            }
        }
        if (!exists) {
            cartItems.add(new Tvt_giohang(id, tvt_name, tvt_hinhanh, tvt_gia, 1));
        }
        session.setAttribute("cartItems", cartItems);
        return "redirect:/giohang";
    }

    // Xóa sản phẩm khỏi giỏ hàng
    @GetMapping("/xoagiohang/{id}")
    public String deletegiohang(@PathVariable int id, HttpSession session) {
        List<Tvt_giohang> cartItems = (List<Tvt_giohang>) session.getAttribute("cartItems");
        if (cartItems != null) {
            cartItems.removeIf(item -> item.getId() == id);
            session.setAttribute("cartItems", cartItems);
        }
        return "redirect:/giohang";
    }

    private int calculateTotal(List<Tvt_giohang> cartItems) {
        int total = 0;
        for (Tvt_giohang item : cartItems) {
            total += item.getTvt_gia() * item.getTvt_soluong();
        }
        return total;
    }

    // Hiển thị form thêm sản phẩm
    @GetMapping("/saveform")
    public String showform(Model m) {
        m.addAttribute("command", new Tvt_sanpham());
        return "saveform";  // file JSP: WEB-INF/views/saveform.jsp
    }

    // Xử lý lưu sản phẩm (submit form)
    @PostMapping("/save")
    public String save(@ModelAttribute("command") Tvt_sanpham tvt_sanpham) {
        dao.save(tvt_sanpham);
        return "redirect:/viewform";
    }

    // Hiển thị danh sách sản phẩm
    @GetMapping("/viewform")
    public String viewemp(Model m) {
        List<Tvt_sanpham> list = dao.getEmployees();
        m.addAttribute("list", list);
        return "viewform"; // file JSP: WEB-INF/views/viewform.jsp
    }

    // Hiển thị form chỉnh sửa sản phẩm
    @GetMapping("/sua/{id}")
    public String edit(@PathVariable int id, Model m) {
        Tvt_sanpham tvt_sanpham = dao.getEmpById(id);
        m.addAttribute("command", tvt_sanpham);
        return "editform"; // file JSP: WEB-INF/views/editform.jsp
    }

    // Xử lý cập nhật sản phẩm sau khi sửa
    @PostMapping("/luu")
    public String luu(@ModelAttribute("command") Tvt_sanpham tvt_sanpham) {
        dao.update(tvt_sanpham);
        return "redirect:/viewform";
    }

    // Xóa sản phẩm
    @GetMapping("/xoa/{id}")
    public String delete(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/viewform";
    }
}
