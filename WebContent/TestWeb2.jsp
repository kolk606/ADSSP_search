<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% System.out.println("load TestWeb2.jsp"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ADSSP Feature Search</title>
<link rel="stylesheet" href="css/search.css">

</head>

<body>
<!-----上のセクション----->
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
<!-----上のセクション終わり----->

<!-----下のセクション----->
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

<!-----下セクション内容----->
<p>
<br>
条件：&nbsp;<s:property value="InJyoken"/>&nbsp;&nbsp;&nbsp;&nbsp;検索結果:&nbsp;<s:property value="データ件数"/>&nbsp;件
<br><br>
</p>

<!-----結果テーブル----->
<div>
<table class="result_table" width="80%">
    <tr>
        <th>機能名</th>
        <th width="50">タブ</th>
        <th>位置</th>
    </tr>

    <s:iterator value="testWeb2list">
    <tr>
        <td class="result_table"><s:property value="feature_name" /></td>
        <td class="result_table"><s:property value="tab" /></td>
        <td class="result_table"><s:property value="feature_location" /></td>
    </tr>
    </s:iterator>

</table>
</div>
<!-----結果テーブル終わり----->
      
</div>
</div>
</section>      
<!-----下のセクション終わり----->
      
      

<footer>
<p>Copyright Kana Katsumata 2018</p>
</footer>
</body>
</html>