
<%@page contentType="text/html" errorPage="error.jsp" import="java.util.*" %>
<html>
	<head>
		<title>Demo JSP page</title>
	</head>
	<body>
		<h2>JSP declarations, scriptlets and expressions</h2>

		<%-- JSP declaration --%>
		<%! private int result = 0; %>

		<%-- JSP expression --%>
		<h3>Result of JSP expression is: <%= (10 + 20) %></h3>

		<%-- JSP declaration with method declaration and JSP scriptlets --%>
		<%@ page import="java.util.Random"errorPage="error.jsp" %>
		<%! private int rollDice() { return (new Random()).nextInt(6) + 1; } %>
		
		<%-- use implicit object out for output --%>
		<h3>The dice shows: <% out.println(rollDice()); %></h3>
		<h3>Dice rolled again. Result is: <%= rollDice() %></h3>
		
		<h2>JSP Implicit Objects</h2>
		<h3>pageContext: <%= pageContext %></h3>
		<h3>Request: <%= request.toString()  %></h3>
		<h3>response<%= response.toString() %></h3>
		<h3>session: <%= session.toString() %></h3>
		<h3>application: <%= application.toString() %></h3>
		
		<h2>JSP Actions</h2>
		<%-- action useBean --%>
		<%@ page import="com.se77.hello.HelloBean" %>
		<jsp:useBean id="helloBean" class="com.se77.hello.HelloBean" scope="session"/>
		
		<%-- action setProperty --%>
		<jsp:setProperty name="helloBean" property="name"value="Ernie"/>
		
		<%-- action getProperty --%>
		<h3>Value of helloBean.name: <jsp:getProperty name="helloBean" property="name"/></h3>
		
		<h2> JSP Expression Language </h2>
		<h3>Value of helloBean.name with expression: ${helloBean.name}</h3>
		
		<h3>Expression arithmetics '5+5': ${ 5 + 5 }</h3>
		<h3>Expression boolean expression '(1 + 2) eq "3"': ${(1 + 2) eq "3"} </h3>
		
		<h2>JSTL examples</h2>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
		<h3> c:if </h3>
		<c:if test="${empty helloBean}">
 			No Hello Bean defined
 		</c:if>
 		<c:if test="${not empty helloBean}">
 			Hello Bean defined
 		</c:if>
 		
 		<h3> c:choose/when/otherwise </h3>
 		<c:choose>
 			<c:when test="${empty helloBean}">
 				No Hello Bean defined
 			</c:when>
 			<c:otherwise>
 				Hello Bean defined
 			</c:otherwise>
 		</c:choose>
 		
 		<h3> c:forEach </h3>
 		<% List strings = Arrays.asList("one","two","three"); %>
 		<% request.setAttribute("strings", strings); %>
 		<c:forEach items="${strings}" var="string">
 			${string}<br>
 		</c:forEach>
 		
 		<h2>Functions Tag-Library</h2>
 		<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
 		<h3> fn:startsWith </h3>
 		<c:if test="${fn:startsWith(helloBean.name, 'Ern')}" >
 			HelloBean name startswith 'Ern'
 		</c:if>
	</body>
</body>
</html>