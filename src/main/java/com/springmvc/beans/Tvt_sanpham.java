package com.springmvc.beans;

public class Tvt_sanpham {
	private int id;
	private String tvt_name;
	private int tvt_gia;
	private int tvt_soluong;
	private String tvt_hinhanh;

	/**
	 * 
	 */
	public Tvt_sanpham() {
		super();
	}

	/**
	 * @param id
	 * @param tvt_name
	 * @param tvt_gia
	 * @param tvt_soluong
	 * @param tvt_hinhanh
	 */
	public Tvt_sanpham(int id, String tvt_name, int tvt_gia, int tvt_soluong, String tvt_hinhanh) {
		super();
		this.id = id;
		this.tvt_name = tvt_name;
		this.tvt_gia = tvt_gia;
		this.tvt_soluong = tvt_soluong;
		this.tvt_hinhanh = tvt_hinhanh;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the tvt_name
	 */
	public String getTvt_name() {
		return tvt_name;
	}

	/**
	 * @param tvt_name the tvt_name to set
	 */
	public void setTvt_name(String tvt_name) {
		this.tvt_name = tvt_name;
	}

	/**
	 * @return the tvt_gia
	 */
	public int getTvt_gia() {
		return tvt_gia;
	}

	/**
	 * @param tvt_gia the tvt_gia to set
	 */
	public void setTvt_gia(int tvt_gia) {
		this.tvt_gia = tvt_gia;
	}

	/**
	 * @return the tvt_soluong
	 */
	public int getTvt_soluong() {
		return tvt_soluong;
	}

	/**
	 * @param tvt_soluong the tvt_soluong to set
	 */
	public void setTvt_soluong(int tvt_soluong) {
		this.tvt_soluong = tvt_soluong;
	}

	/**
	 * @return the tvt_hinhanh
	 */
	public String getTvt_hinhanh() {
		return tvt_hinhanh;
	}

	/**
	 * @param tvt_hinhanh the tvt_hinhanh to set
	 */
	public void setTvt_hinhanh(String tvt_hinhanh) {
		this.tvt_hinhanh = tvt_hinhanh;
	}

}
