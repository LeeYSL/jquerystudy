<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
    $("h1").html(function(i,h){
    	let star = ""
    	for(s=0;s<=i;s++)
    		star += "★"
    			return star + h + star
    })

})
</script>

   
</head>
<body>
<h1>Header-0</h1><h1>Header-1</h1>
<h1>Header-2</h1><h1>Header-3</h1>
</body>
</html>