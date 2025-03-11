package com.springmvc.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.beans.Tvt_giohang;
import com.springmvc.beans.Tvt_sanpham;
import com.springmvc.dao.Tvt_sanphamdao;
import javax.servlet.http.HttpSession;

@Controller  
public class HomeController {  

    @Autowired  
    Tvt_sanphamdao dao; // Inject UserDao for data operations
    
    @GetMapping("/giohang")
    public String showCart(HttpSession session, Model model) {
        List<Tvt_giohang> attribute = (List<Tvt_giohang>) session.getAttribute("cartItems");
		List<Tvt_giohang> cartItems = attribute;
        if (cartItems == null) {
            cartItems = new ArrayList<>();
        }

        for (Tvt_giohang item : cartItems) {
            System.out.println("Sản phẩm: " + item.getTvt_name() + " | Hình ảnh: " + item.getTvt_hinhanh());
        }

        model.addAttribute("cartItems", cartItems);
        model.addAttribute("totalAmount", calculateTotal(cartItems));
        return "giohang";
    }

    @GetMapping("/add-to-cart")
    public String addToCart(@RequestParam int id, 
                            @RequestParam String tvt_name, 
                            @RequestParam String tvt_hinhanh, 
                            @RequestParam int tvt_gia, 
                            HttpSession session) {
        
        System.out.println("Thêm sản phẩm vào giỏ: " + tvt_name + " | Ảnh: " + tvt_hinhanh);

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

    @GetMapping("/saveform")
    public String showform(Model m) {
        m.addAttribute("command", new Tvt_sanpham());
        return "saveform";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("user") Tvt_sanpham tvt_sanpham) {
        dao.save(tvt_sanpham);
        return "redirect:/viewform";
    }

    @GetMapping("/viewform")
    public String viewemp(Model m) {
        List<Tvt_sanpham> list = dao.getEmployees();
        m.addAttribute("list", list);
        return "viewform";
    }

    @GetMapping("/sua/{id}")
    public String edit(@PathVariable int id, Model m) {
        Tvt_sanpham tvt_sanpham = dao.getEmpById(id);
        m.addAttribute("command", tvt_sanpham);
        return "editform";
    }

    @PostMapping("/luu")
    public String luu(@ModelAttribute("user") Tvt_sanpham tvt_sanpham) {
        dao.update(tvt_sanpham);
        return "redirect:/viewform";
    }

    @GetMapping("/xoa/{id}")  
    public String delete(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/viewform";
    }
}
