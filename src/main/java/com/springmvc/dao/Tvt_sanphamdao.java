package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.Tvt_sanpham;

public class Tvt_sanphamdao {
    JdbcTemplate template;	

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

   
    public int save(Tvt_sanpham p) {
        String sql = "insert into tvt_sanpham (tvt_name,tvt_hinhanh, tvt_gia, tvt_soluong) values (?, ?, ?,?)";
        return template.update(sql, p.getTvt_name(), p.getTvt_hinhanh(), p.getTvt_gia(), p.getTvt_soluong());
    }

   
    public int update(Tvt_sanpham p) {
        String sql = "update tvt_sanpham set tvt_name = ?,tvt_hinhanh = ?, tvt_gia = ?, tvt_soluong = ? where id = ?";
        return template.update(sql, p.getTvt_name(), p.getTvt_hinhanh(), p.getTvt_gia(), p.getTvt_soluong(), p.getId());
    }

   
    public int delete(int id) {
        String sql = "delete from tvt_sanpham where id = ?";
        return template.update(sql, id);
    }
    public int deletegiohang(int id) {
        String sql = "delete from tvt_sanpham where id = ?";
        return template.update(sql, id);
    }

    
    public Tvt_sanpham getEmpById(int id) {
        String sql = "select * from tvt_sanpham where id = ?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Tvt_sanpham>(Tvt_sanpham.class));
    }

    
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
