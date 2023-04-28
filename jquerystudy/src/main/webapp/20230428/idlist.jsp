<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource var="conn" driver="org.mariadb.jdbc.Driver"
	url="jdbc:mariadb://localhost:3306/gdudb" user="gdu" password="1234" />
<sql:query var="rs" dataSource="${conn}">
    select * from member where id like ?
    <sql:param>${param.id}%</sql:param> <%-- 내가 입력한 id 값으로 시작하는 아이디 조회 --%>
</sql:query>
<ul>
<%-- data : member의 레코드 값 --%>
	<c:forEach var="data" items="${rs.rows}">
	 <%--rs.rows : resultset 객체 배열의 형태  --%>
		<li>${data.id}</li>
	</c:forEach>
</ul>