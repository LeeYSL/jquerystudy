/**
 * 
 */
//ajax("test.txt",null,getMax,"GET")
function ajax(url,params,callback,method) {
	const xhttp = new XMLHttpRequest //ajax 객체 생성
	method = method.toUpperCase() //메서드에 들어온 정보를 대문자로 변환.
	if(method != "POST") { //POST 방식이 아닌 경우는 무조건 GET 방식으로 전송
		method = "GET" //
	}
	if(method == "GET") {
		url = url + "?"+params // GET 방식인 경우는 url에 파라미터 값 붙여서 서버로 전송
	}
	//true : 기본 값. 비동기 방식으로 전송 (동기 방식으로 전송 시 false)
	xhttp.open(method,url,true)
	//post 방식을 대비해 header 정보 설정
	xhttp.setRequestHeader("Content-type",
	          "application/x-www-form-urlencoded;charset=UTF-8")
	xhttp.send(method=='POST'?params:null) //메서드 방식이 post 면 params로 전송 get 방식이면 null 등록
	xhttp.onreadystatechange=callback //콜백함수등록(getMax 함수)      
}