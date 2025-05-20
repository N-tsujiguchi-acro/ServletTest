<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ContactPage</title>

<style>
    body {
        font-family: "Arial", sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }

    form {
        max-width: 600px;
        margin: 50px auto;
        padding: 30px;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    p, label {
        font-size: 16px;
        margin-bottom: 10px;
    }

    input[type="text"],
    input[type="email"],
    textarea {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 15px;
    }

    input[type="checkbox"],
    input[type="radio"] {
        margin-right: 10px;
    }

    textarea {
        resize: vertical;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 25px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    .form-section {
        margin-bottom: 20px;
    }
</style>
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