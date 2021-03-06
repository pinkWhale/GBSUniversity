<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<tiles:importAttribute name="innerLayout" />
<c:forEach var="innerLayout" items="${innerLayout}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${innerLayout}"/>" />
</c:forEach>

<%
HttpSession session1 = request.getSession();
String user_id = (String)session1.getAttribute("user_id");
%>

<div class="container">
<br>
		<h4><a href="/listqnaboard">Q & A</a></h4>
        <br/>
		
        <table id="table" class="table table-striped table-condensed" cellspacing="0" width="100%">
        <tr>
        	<td style="width:10%;">idx</td><td>title</td><td style="width:10%;">comment</td>
		</tr>
			<% int num = 1; %>
			<c:forEach items="${list}" var="vo">
				<tr>
					<td><%=num++%></td>
					<td><a href="/viewqnaboard?idx=${vo.idx}">${vo.title}</a></td>
					<td>${vo.count}</td>
				</tr>
			</c:forEach>
		</table>
	<br><br>

   <button class="btn btn-info" onClick="location.href='/addqnaboardView';">Write</button>

</div>
<br><br><br><br>
