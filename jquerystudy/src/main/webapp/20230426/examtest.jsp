<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 0부터 99까지의 임의의 수 10개를 ,이용하요 출력하기 --%>
<%
  String result= "";
  for(int i=1;i<=10; i++) {
	  int n =(int)(Math.random()*100);
	  result +=n+((i==10)?"":",");
  }
 // out.println(result);  
  %>
<%=result %>
