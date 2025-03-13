package com.springmvc.dao;

import com.springmvc.beans.Tvt_khachhang;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class Tvt_khachhangdao {
    private JdbcTemplate template;

    public JdbcTemplate getTemplate() {
        return template;
    }

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }


    public List<Tvt_khachhang> getAllCustomers() {
        String sql = "SELECT * FROM tvt_khachhang";
        return template.query(sql, new BeanPropertyRowMapper<>(Tvt_khachhang.class));
    }

    // Lưu thông tin khách hàng vào database
    public int saveCustomer(Tvt_khachhang customer) {
        String sql = "INSERT INTO tvt_khachhang (tvt_name, tvt_sdt, tvt_email, tvt_diachi) VALUES (?, ?, ?, ?)";
        return template.update(sql, customer.getTvt_name(), customer.getTvt_sdt(), customer.getTvt_email(), customer.getTvt_diachi());
    }


    public void deleteCustomer(int id) {
        String sql = "DELETE FROM tvt_khachhang WHERE ID = ?";
        template.update(sql, id);
    }
}