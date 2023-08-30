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
	List<Emp> empList=sqlSession.selectList("Emp.selectAll");
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
			<th>사원번호</th>
			<th>사원명</th>
			<th>업무</th>
			<th>매니져</th>
			<th>입사일</th>
			<th>급여</th>
			<th>커미션</th>
			<th>부서번호</th>
			<th>부서명</th>
			<th>부서위치</th>
		</tr>
		<%for(int i=0;i<empList.size();i++){%>
		<%Emp emp=empList.get(i); %>
		<tr>
			<td><%=emp.getEmpno() %></td>
			<td><%=emp.getEname() %></td>
			<td><%=emp.getJob() %></td>
			<td><%=emp.getMgr() %></td>
			<td><%=emp.getHiredate() %></td>
			<td><%=emp.getSal() %></td>
			<td><%=emp.getComm() %></td>
			<td><%=emp.getDept().getDeptno() %></td>
			<td><%=emp.getDept().getDname() %></td>
			<td><%=emp.getDept().getLoc() %></td>
		</tr>
		<%} %>
	</table>
</body>
</html>






