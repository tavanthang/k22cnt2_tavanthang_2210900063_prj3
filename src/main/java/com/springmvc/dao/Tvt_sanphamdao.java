package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springmvc.beans.Tvt_sanpham;

@Repository
public class Tvt_sanphamdao {

    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Lưu sản phẩm mới
    public int save(Tvt_sanpham p) {
        String sql = "insert into tvt_sanpham (tvt_name, tvt_hinhanh, tvt_gia, tvt_soluong) values (?, ?, ?, ?)";
        return template.update(sql, p.getTvt_name(), p.getTvt_hinhanh(), p.getTvt_gia(), p.getTvt_soluong());
    }

    // Cập nhật sản phẩm
    public int update(Tvt_sanpham p) {
        String sql = "update tvt_sanpham set tvt_name = ?, tvt_hinhanh = ?, tvt_gia = ?, tvt_soluong = ? where id = ?";
        return template.update(sql, p.getTvt_name(), p.getTvt_hinhanh(), p.getTvt_gia(), p.getTvt_soluong(), p.getId());
    }

    // Xóa sản phẩm
    public int delete(int id) {
        String sql = "delete from tvt_sanpham where id = ?";
        return template.update(sql, id);
    }

    // Lấy sản phẩm theo ID
    public Tvt_sanpham getEmpById(int id) {
        String sql = "select * from tvt_sanpham where id = ?";
        return template.queryForObject(sql, new Object[] { id },
                new BeanPropertyRowMapper<Tvt_sanpham>(Tvt_sanpham.class));
    }

    // Lấy danh sách tất cả sản phẩm
    public List<Tvt_sanpham> getEmployees() {
        String sql = "select * from tvt_sanpham";
        return template.query(sql, new RowMapper<Tvt_sanpham>() {
            public Tvt_sanpham mapRow(ResultSet rs, int row) throws SQLException {
                Tvt_sanpham e = new Tvt_sanpham();
                e.setId(rs.getInt("id"));
                e.setTvt_name(rs.getString("tvt_name"));
                e.setTvt_hinhanh(rs.getString("tvt_hinhanh"));
                e.setTvt_gia(rs.getInt("tvt_gia"));
                e.setTvt_soluong(rs.getInt("tvt_soluong"));
                return e;
            }
        });
    }
}
