<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ContactPage</title>
</head>
<body>
<form action="<%= request.getContextPath() %>/Contact"method="POST">

	<P>お名前：<input type="text" name="name" placeholder="辻口乃亜" required></P>
	<P>会社名：<input type="text" name="company" placeholder="辻口商事" ></P>
	<P>メールアドレス：<input type="email" name="email" placeholder="○○○○@○○○.co.jp" required></P>
	<P>お問い合わせ内容：<textarea id="myTextarea" rows="5" cols="30" name="request"></textarea></P>
	
    <p>メルマガ種類</p>
    <label><input type="checkbox" name="option" value="総合案内"> 総合案内</label><br>
    <label><input type="checkbox" name="option" value="セミナー案内"> セミナー案内</label><br>
    <label><input type="checkbox" name="option" value="求人採用情報"> 求人採用情報</label><br>
     
	<p>資料請求希望</p>
	<label><input type="radio" name="materials" value="YES" required> YES</label><br>
    <label><input type="radio" name="materials" value="NO"> NO</label><br>
     
	
	<input type="submit" value="送信">
</form>
</body>
</html>