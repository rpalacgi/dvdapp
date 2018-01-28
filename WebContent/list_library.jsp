<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>

<head>
<title>ListLibraryServlet (JSTL)</title>
</head>

<body bgcolor='white'>

You currently have <b>${fn:length(sessionScope.library.DVDCollection)}</b>
DVDs in your collection:<br/>

<table border='0' cellspacing='0' cellpadding='5'>

<tr>
<c:if test="${not empty sessionScope.showTitle}">
    <th>TITLE</th>
</c:if>
<c:if test="${not empty sessionScope.showYear}">
    <th>YEAR</th>
</c:if>
<c:if test="${not empty sessionScope.showGenre}">
    <th>GENRE</th>
</c:if>
</tr>

<c:forEach var="item" items="${sessionScope.library.DVDCollection}">
<tr>
  <c:if test="${not empty sessionScope.showTitle}">
      <td>${item.title}</td>
  </c:if>
  <c:if test="${not empty sessionScope.showYear}">
      <td>${item.year}</td>
  </c:if>
  <c:if test="${not empty sessionScope.showGenre}">
      <td>${item.genre}</td>
  </c:if>
</tr>
</c:forEach>

</table>

</body>

</html>
