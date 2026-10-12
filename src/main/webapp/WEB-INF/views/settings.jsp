<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Settings</title>
</head>
<body>
<h2>Settings</h2>

<form:form action="/update" method="post" modelAttribute="config">
    <table>
        <tr>
            <td><strong>Languages</strong></td>
            <td><form:select path="languages" items="${languages}" /></td>
        </tr>
        <tr>
            <td><strong>Page Size:</strong></td>
            <td>Show <form:select path="pageSize" items="${pageSizes}" /> emails per page</td>
        </tr>
        <tr>
            <td><strong>Spams filter:</strong></td>
            <td>
                <form:checkbox path="spamsFilter" id="spamsFilter"/>
                <label for="spamsFilter">Enable spams filter</label>
            </td>
        </tr>
        <tr>
            <td><strong>Signature:</strong></td>
            <td><form:textarea path="signature" rows="4" cols="30" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">Update</button>
                <button type="reset">Cancel</button>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>