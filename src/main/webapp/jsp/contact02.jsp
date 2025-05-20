<%@page import="org.apache.jasper.Options"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>確定ページ</title>
</head>
<body>
<p>お客様のページ</p>
<%

String name = (String)request.getAttribute("name");

String cp = (String)request.getAttribute("cp");
String company = (String)request.getAttribute("company");
%>
<H1><%=company%></H1>
<% 
String email = (String)request.getAttribute("email");
String requests = (String)request.getAttribute("requests");
String[] op = (String[])request.getAttribute("options");

%>

<p><%=name %>さま。この度はありがとうございます！</p>
<p><%=name %>さまのメールアドレスは<%=email %>で、お問い合わせ内容は、<%= requests%>とのことですね。</p>
<p>オプションの内容としては、<%

	for(String ops : op){
		out.println("["+ops+"]");
	}

%>でご用意させていただきます。</p>

<p>
資料請求はご希望ではないということで、登録いたしました！<br>
またの機会によろしくお願いいたします。
</p>

</body>
</html>