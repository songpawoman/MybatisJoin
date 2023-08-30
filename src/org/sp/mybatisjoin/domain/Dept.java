package org.sp.mybatisjoin.domain;

import java.util.List;

public class Dept {
	private int deptno;//10
	private String dname; //어카운ㅌ딩
	private String loc; //달라스
	private List<Emp> empList; //select * from emp where deptno=?
	
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public List<Emp> getEmpList() {
		return empList;
	}
	public void setEmpList(List<Emp> empList) {
		this.empList = empList;
	}
	
	
}
