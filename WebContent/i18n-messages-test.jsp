<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="theLocale"
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
scope="session"></c:set>

<fmt:setLocale value="${theLocale}"/>

<fmt:setBundle basename="xMultiLinualApp.i18n.resources.mylabels"/>
	



<html>
<body>

<a href="i18n-messages-test.jsp?theLocale=en_US">English(US)</a>
<a href="i18n-messages-test.jsp?theLocale=hi_IN">Hindi(IN)</a>
<a href="i18n-messages-test.jsp?theLocale=mr_IN">Marathi(IN)</a>

<hr>

<fmt:message key="label.greeting"></fmt:message> <br> <br>
<fmt:message key="label.firstname"></fmt:message> <i>: Satyam</i> <br> <br>
<fmt:message key="label.lastname"></fmt:message> <i>: Indhane</i> <br> <br>
<fmt:message key="label.welcome"></fmt:message> <br> <br>

<hr>

Selected locale: ${theLocale}

</body>
</html>