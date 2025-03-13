package com.springmvc.controllers;

import com.springmvc.beans.Tvt_quantri;
import com.springmvc.dao.Tvt_quantridao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class TvtQuantriController {

    @Autowired
    private Tvt_quantridao dao;

    // Đăng nhập admin (Hiển thị form)
    @GetMapping("/login")
    public String showLoginForm() {
        return "admin/login";  // Trả về trang login.jsp
    }

    // Xử lý đăng nhập
    @PostMapping("/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        HttpSession session, Model model) {
        Tvt_quantri admin = dao.getAdminByUsernameAndPassword(username, password);
        if (admin != null) {
            session.setAttribute("admin", admin);  // Lưu thông tin admin vào session
            return "redirect:/admin/list";
        } else {
            model.addAttribute("error", "Sai tài khoản hoặc mật khẩu!");
            return "admin/login";
        }
    }

    // Đăng xuất
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // Hủy session
        return "redirect:/admin/login";
    }

    // Đăng ký admin (Hiển thị form)
    @GetMapping("/register")
    public String showRegisterForm() {
        return "admin/register";  // Trả về trang register.jsp
    }

    // Xử lý đăng ký admin
    @PostMapping("/register")
    public String register(@ModelAttribute Tvt_quantri admin, Model model) {
        Tvt_quantri existingAdmin = dao.getAdminByUsernameAndPassword(admin.getTvt_TaiKhoan(), admin.getTvt_MatKhau());
        if (existingAdmin != null) {
            model.addAttribute("error", "Tài khoản đã tồn tại!");
            return "admin/register";
        }
        
        admin.setTvt_TrangThai(true);  // Mặc định trạng thái active
        dao.save(admin);
        return "redirect:/admin/login";
    }

    // Hiển thị danh sách admin
    @GetMapping("/list")
    public String listAdmins(Model model, HttpSession session) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/login";  // Chưa đăng nhập thì quay về trang login
        }

        List<Tvt_quantri> list = dao.getEmployees();
        model.addAttribute("list", list);
        return "admin/list";
    }

    // Hiển thị form thêm admin
    @GetMapping("/add")
    public String showAddForm(Model model, HttpSession session) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/login";
        }

        model.addAttribute("admin", new Tvt_quantri());
        return "admin/add";
    }

    // Xử lý thêm admin
    @PostMapping("/add")
    public String addAdmin(@ModelAttribute Tvt_quantri admin) {
        admin.setTvt_TrangThai(true);  // Mặc định trạng thái active
        dao.save(admin);
        return "redirect:/admin/list";
    }

    // Hiển thị form sửa admin
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable int id, Model model, HttpSession session) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/login";
        }

        Tvt_quantri admin = dao.getEmpById(id);
        model.addAttribute("admin", admin);
        return "admin/edit";
    }

    // Xử lý cập nhật admin
    @PostMapping("/update")
    public String updateAdmin(@ModelAttribute Tvt_quantri admin) {
        dao.update(admin);
        return "redirect:/admin/list";
    }

    // Xóa admin
    @GetMapping("/delete/{id}")
    public String deleteAdmin(@PathVariable int id, HttpSession session) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/login";
        }

        dao.delete(id);
        return "redirect:/admin/list";
    }
}