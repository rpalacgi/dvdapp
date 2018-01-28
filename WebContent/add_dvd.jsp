<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>

<html>

<head>
  <title>DVD Library Application: Add DVD Form</title>
</head>
<body bgcolor='white'>

<%-- Generate main body --%>
<h1>Add DVD (Struts)</h1>

<%-- Report any errors (if any) --%>
<html:errors />

<form action='add_dvd.do' method='POST'>

<%-- Repopulate the title field --%>
Title: <input type='text' name='title' value='${param.title}' /> <br/><br/>

<%-- Repopulate the year field --%>
Year: <input type='text' name='year' value='${param.year}' /> <br/><br/>

<%-- Repopulate the Genre drop-down menu --%>
Genre: <select name='genre'>
  <c:forEach var="genre_item" items="${library.genres}">
        <option value='${genre_item}'
                <c:if test="${genre_item eq param.genre}">selected</c:if>
        >${genre_item}</option>
  </c:forEach>
       </select>

  or new genre: <input type='text' name='newGenre' value='${param.newGenre}' /> <br/><br/>

  <input type='Submit' value='Add DVD' />

</form>

</body>

</html>
