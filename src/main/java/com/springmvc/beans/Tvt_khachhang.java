package com.springmvc.beans;

public class Tvt_khachhang {
    private int id;
    private String tvt_name;
    private String tvt_sdt;
    private String tvt_email;
    private String tvt_diachi;

    // Constructors
    public Tvt_khachhang() {}

    public Tvt_khachhang(int id, String tvt_name, String tvt_sdt, String tvt_email, String tvt_diachi) {
        this.id = id;
        this.tvt_name = tvt_name;
        this.tvt_sdt = tvt_sdt;
        this.tvt_email = tvt_email;
        this.tvt_diachi = tvt_diachi;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTvt_name() {
        return tvt_name;
    }

    public void setTvt_name(String tvt_name) {
        this.tvt_name = tvt_name;
    }

    public String getTvt_sdt() {
        return tvt_sdt;
    }

    public void setTvt_sdt(String tvt_sdt) {
        this.tvt_sdt = tvt_sdt;
    }

    public String getTvt_email() {
        return tvt_email;
    }

    public void setTvt_email(String tvt_email) {
        this.tvt_email = tvt_email;
    }

    public String getTvt_diachi() {
        return tvt_diachi;
    }

    public void setTvt_diachi(String tvt_diachi) {
        this.tvt_diachi = tvt_diachi;
    }
}
