<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% System.out.println("load dataedit.jsp"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ADSSP Feature Search Edit</title>
<link rel="stylesheet" href="css/search.css">

</head>

<body>
<section>
<div class="search_section">
<div class="search_block">
<p>
<img src="images/adselfservice-plus-white.png" width="454px">
<br/>
    機能名を入力(部分一致)：<br/>
<s:form cssClass="msr_search_03" action = "testweb2">
    <s:textfield  name="InJyoken"/>
    <input type="submit" value=" "/>  
</s:form>

</p>
</div>
</div>
</section>


<section>
<div class="result_section">
<div class="result_block">
<!-----メニュー----->
<table class="result_block_white">
	<tr class="margin_zero">
		<th class="select_menu"><a href="index.jsp">ホーム</a></th>
		<th><a href="log.jsp">ログ解析</a></th>
		<th><a href="dataedit.jsp">設定</a></th>
	</tr>
</table>
<!-----メニュー終わり----->



<iframe width="1250" height="800" style="border:1px solid #ccc" frameborder="0" scrolling="no" src="https://docs.zoho.com/sheet/published.do?rid=bnvgvdf8097788f3a476c91d9c6e6eb238174&mode=embed"> </iframe>

      
</div>
</div>
</section>      
      
      
      

<footer>
<p>Copyright Kana Katsumata 2018</p>
</footer>
</body>
</html>