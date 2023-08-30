<%@page import="org.sp.mybatisjoin.domain.Dept"%>
<%@page import="org.sp.mybatisjoin.domain.Emp"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.sp.mybatisjoin.mybatis.MybatisConfig"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%! 
	MybatisConfig mybatisConfig=MybatisConfig.getInstance();
%>
<%
	SqlSession sqlSession=mybatisConfig.getSqlSession();
	List<Dept> deptList=sqlSession.selectList("Dept.selectAllWithEmp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="100%" border="1px">
		<tr>
			<th>부서번호</th>
			<th>부서명</th>
			<th>부서위치</th>
			<th>사원정보</th>
		</tr>
		<%for(int i=0;i<deptList.size();i++){%>
		<%
			Dept dept=deptList.get(i);
		%>
		<tr>
			<td><%=dept.getDeptno() %></td>
			<td><%=dept.getDname() %></td>
			<td><%=dept.getLoc() %></td>
			<td>
				<%for(int a=0; a<dept.getEmpList().size();a++){%>
				<%
					Emp emp=dept.getEmpList().get(a);
					out.print(emp.getEname()+"<br>");
				%>
				<%} %>
			</td>
		</tr>
		<%} %>
	</table>
</body>
</html>






