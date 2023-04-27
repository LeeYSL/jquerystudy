<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource var="conn" driver="org.mariadb.jdbc.Driver"
	url="jdbc:mariadb://localhost:3306/gdudb" 
	user="gdu" password="1234" /> <!-- conn 객체 -->

<sql:query var="rs" dataSource="${conn}">
   select * from member where id=?
   <sql:param>${param.id }</sql:param> <!-- 입력하는 id -->
</sql:query>
<c:if test="${! empty rs.rows}">
 <h1 id="result" class="find" style="color:red;">존재하는 아이디 입니다.</h1>
</c:if> <!--  id속성을 유일해야 되지만 하나만 내려가기 때문에 괜찮음? -->
<c:if test="${empty rs.rows}">
  <h1 id="result" class="notfound">회원 가입이 가능한 아이디 입니다.</h1>
</c:if>