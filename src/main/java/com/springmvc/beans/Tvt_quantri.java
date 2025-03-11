package com.springmvc.beans;

public class Tvt_quantri {
	private int id;
	private String tvt_TaiKhoan;
	private String tvt_MatKhau;
	private boolean tvt_TrangThai;

	/**
	 * 
	 */
	public Tvt_quantri() {
		super();
	}

	/**
	 * @param id
	 * @param tvt_TaiKhoan
	 * @param tvt_MatKhau
	 * @param tvt_TrangThai
	 */
	public Tvt_quantri(int id, String tvt_TaiKhoan, String tvt_MatKhau, boolean tvt_TrangThai) {
		super();
		this.id = id;
		this.tvt_TaiKhoan = tvt_TaiKhoan;
		this.tvt_MatKhau = tvt_MatKhau;
		this.tvt_TrangThai = tvt_TrangThai;
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
	 * @return the tvt_TaiKhoan
	 */
	public String getTvt_TaiKhoan() {
		return tvt_TaiKhoan;
	}

	/**
	 * @param tvt_TaiKhoan the tvt_TaiKhoan to set
	 */
	public void setTvt_TaiKhoan(String tvt_TaiKhoan) {
		this.tvt_TaiKhoan = tvt_TaiKhoan;
	}

	/**
	 * @return the tvt_MatKhau
	 */
	public String getTvt_MatKhau() {
		return tvt_MatKhau;
	}

	/**
	 * @param tvt_MatKhau the tvt_MatKhau to set
	 */
	public void setTvt_MatKhau(String tvt_MatKhau) {
		this.tvt_MatKhau = tvt_MatKhau;
	}

	/**
	 * @return the tvt_TrangThai
	 */
	public boolean isTvt_TrangThai() {
		return tvt_TrangThai;
	}

	/**
	 * @param tvt_TrangThai the tvt_TrangThai to set
	 */
	public void setTvt_TrangThai(boolean tvt_TrangThai) {
		this.tvt_TrangThai = tvt_TrangThai;
	}

}
