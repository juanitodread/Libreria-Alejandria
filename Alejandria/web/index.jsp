<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
/**
This JSP is only to redirect to index.htm spring
*/
final String INDEX_PATH_URI = "/index.htm";
response.sendRedirect(String.format("%s%s", request.getContextPath(), INDEX_PATH_URI));
%>
