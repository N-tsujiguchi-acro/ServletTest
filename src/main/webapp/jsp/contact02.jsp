<%@page import="org.apache.jasper.Options"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>確定ページ</title>
<style>
    body {
        font-family: "Helvetica Neue", sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        padding: 0;
    }
    
    .container {
        max-width: 700px;
        margin: 60px auto;
        background-color: #ffffff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    }

    h1 {
        color: #2c3e50;
        font-size: 28px;
        margin-bottom: 20px;
    }

    p {
        font-size: 18px;
        line-height: 1.6;
        color: #333;
        margin-bottom: 20px;
    }

    .highlight {
        font-weight: bold;
        color: #007BFF;
    }

    .options {
        background-color: #eef6ff;
        border-left: 5px solid #007BFF;
        padding: 10px 15px;
        border-radius: 5px;
        margin-bottom: 20px;
    }

    
</style>
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