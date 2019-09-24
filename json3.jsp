<%@page import="com.exam.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="com.exam.dao.MemberDao"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% 
    
    MemberDao memberDao = MemberDao.getInstance();
    
    List<MemberVO>memberList = memberDao.getMembers();
    %>
    <memberlist>
    <%
    for(MemberVO memberVO : memberList){
    %>
    
    <member>
    
    <id><%=memberVO.getId() %></id>
    <passwd><%=memberVO.getPasswd() %>></passwd>
    <name><%=memberVO.getName()%></name>
    
    </member>
    
    
    <%
    }//for
    
    %>
    </memberlist>
  