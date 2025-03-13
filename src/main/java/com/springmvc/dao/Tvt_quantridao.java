package com.springmvc.dao;

import com.springmvc.beans.Tvt_quantri;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class Tvt_quantridao {
    @Autowired
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm tài khoản admin mới (Đăng ký)
    public int save(Tvt_quantri p) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String hashedPassword = encoder.encode(p.getTvt_MatKhau()); // Băm mật khẩu

        String sql = "INSERT INTO tvt_quantri (tvt_TaiKhoan, tvt_MatKhau, tvt_TrangThai) VALUES (?, ?, ?)";
        return template.update(sql, p.getTvt_TaiKhoan(), hashedPassword, p.isTvt_TrangThai());
    }

    // Cập nhật thông tin admin
    public int update(Tvt_quantri p) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String hashedPassword = encoder.encode(p.getTvt_MatKhau()); // Băm mật khẩu mới

        String sql = "UPDATE tvt_quantri SET tvt_TaiKhoan = ?, tvt_MatKhau = ?, tvt_TrangThai = ? WHERE id = ?";
        return template.update(sql, p.getTvt_TaiKhoan(), hashedPassword, p.isTvt_TrangThai(), p.getId());
    }

    // Xóa admin theo ID
    public int delete(int id) {
        String sql = "DELETE FROM tvt_quantri WHERE id = ?";
        return template.update(sql, id);
    }

    // Lấy thông tin admin theo ID
    public Tvt_quantri getEmpById(int id) {
        String sql = "SELECT * FROM tvt_quantri WHERE id = ?";
        try {
            return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(Tvt_quantri.class));
        } catch (EmptyResultDataAccessException e) {
            return null; // Không tìm thấy admin
        }
    }

    // Lấy danh sách tất cả admin
    public List<Tvt_quantri> getEmployees() {
        String sql = "SELECT * FROM tvt_quantri";
        return template.query(sql, new RowMapper<Tvt_quantri>() {
            public Tvt_quantri mapRow(ResultSet rs, int row) throws SQLException {
                Tvt_quantri e = new Tvt_quantri();
                e.setId(rs.getInt("id"));
                e.setTvt_TaiKhoan(rs.getString("tvt_TaiKhoan"));
                e.setTvt_MatKhau(rs.getString("tvt_MatKhau"));
                e.setTvt_TrangThai(rs.getBoolean("tvt_TrangThai"));
                return e;
            }
        });
    }

    // Đăng nhập admin (kiểm tra mật khẩu bằng BCrypt)
    public Tvt_quantri getAdminByUsernameAndPassword(String username, String password) {
        String sql = "SELECT * FROM tvt_quantri WHERE tvt_TaiKhoan = ?";
        try {
            Tvt_quantri admin = template.queryForObject(sql, new Object[]{username}, new BeanPropertyRowMapper<>(Tvt_quantri.class));

            // Kiểm tra mật khẩu đã băm
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            if (admin != null && encoder.matches(password, admin.getTvt_MatKhau())) {
                return admin; // Đăng nhập thành công
            }
            return null; // Sai mật khẩu
        } catch (EmptyResultDataAccessException e) {
            return null; // Không tìm thấy tài khoản
        }
    }
}