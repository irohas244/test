<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>商品情報の更新画面</title>

<style type="text/css">
h1 {
	margin: 0 auto;
	margin-top: 20px;
	margin-bottom: 10px;
	padding-top: 5px;
	padding-bottom: 5px;
	width: 500px;
	font-size: 20px;
}

body {
	margin: 0px;
	padding: 00px;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
}

label {
	font-size: 12px;
}

.new {
	float: left;
	margin-left: 15px;
	text-align: left;
}

#admin {
	border: 1px solid lightgray;
	border-radius: 5px;
	width: 780px;
	height: 400px;
	margin: 15px auto;
	text-align: center;
}

#top p {
	text-transform: uppercase;
	text-align: center;
	color: #666;
	margin: 0 auto;
	letter-spacing: 4px;
	font: normal 26px/1 Verdana, Helvetica;
	font-size: 25px;
	position: relative;
}

#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
	border-radius: 5px;
}

#header {
	width: 100%;
	height: 80px;
	background-color: #000080;
}

#main {
	width: 100%;
	height: 500px;
	text-align: center;
}

.square_btn {
	position: relative;
	display: inline-block;
	padding: 5px 3px;
	margin: 5px;
	text-decoration: none;
	color: #FFF;
	background: #fd9535;
	border-bottom: solid 2px #d27d00;
	border-radius: 4px;
	box-shadow: inset 0 2px 0 rgba(255, 255, 255, 0.2), 0 2px 2px
		rgba(0, 0, 0, 0.19);
	font-weight: bold;
}

.square_btn:active {
	border-bottom: solid 2px #fd9535;
	box-shadow: 0 0 2px rgba(0, 0, 0, 0.30);
}

.update {
	padding: 7px;
	border-radius: 6px;
}

.new h1 {
	border-left: 4px solid black;
	padding-left: 5.5px;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: #000080;
	clear: both;
}

#footer .other {
	text-align: center;
}

#text-link {
	display: inline-block;
	text-align: right;
}
</style>
</head>


<body>
	<div id="header"></div>

	<div id="main">
		<div id="top">
			<p>更新情報の登録画面</p>
		</div>

		<div>
			<p>更新情報を、下の項目に入力して下さい。</p>
		</div>
		<s:if test="errorMassage != ''">
			<s:property value="errorMassage" escape="false" />
		</s:if>

		<s:form action="ItemUpdateConfirmAction">
			<div>
				<label>商品No：</label>
				<s:property value="%{#session.id}" escape="false" />
				<s:hidden name="id" value="%{#session.id}" />
			</div>
			<div>
				<label>更新後の商品値段</label> <br> <input type="text"
					name="itemPrice" value="" size="30" class="update" />円<br>
			</div>
			<br>

			<div>
				<label>更新後の在庫数</label> <br> <input type="text" name="itemStock"
					value="" size="25" class="update" />個<br>
			</div>
			<br>
			<div>
				<s:submit value="商品の情報を更新する" />
			</div>
		</s:form>
	</div>

	<div id="footer">
		<div class="other">
			<a href='<s:url action="GoHomeAction" />' class="square_btn">HOMEへ</a>
			<a href='<s:url action="ItemListAction" />' class="square_btn">商品一覧へ</a>
			<a href='<s:url action="GoAdminAction" />' class="square_btn">管理画面へ</a>
			<a href='<s:url action="LogoutAction" />' class="square_btn">ログアウト</a>
		</div>
	</div>
</body>
</html>