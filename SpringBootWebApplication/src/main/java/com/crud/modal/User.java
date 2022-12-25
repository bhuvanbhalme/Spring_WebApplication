package com.crud.modal;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="EmployeeRegisterPage")
public class User {

	@Id
	private int id;
	private String name;
	private String role;
	private String mobile;
	private String manager;
	private String office;
	private String join;

	public User() {
			super();
			// TODO Auto-generated constructor stub
		}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getOffice() {
		return office;
	}

	public void setOffice(String office) {
		this.office = office;
	}

	public String getJoin() {
		return join;
	}

	public void setJoin(String join) {
		this.join = join;
	}

	public User(int id, String name, String role, String mobile, String manager, String office, String join) {
		super();
		this.id = id;
		this.name = name;
		this.role = role;
		this.mobile = mobile;
		this.manager = manager;
		this.office = office;
		this.join = join;
	}

	

	

}
