<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Updated Settings</title>
</head>
<body>
<h2>Settings Info</h2>
<p><strong>Language:</strong> ${config.languages}</p>
<p><strong>Page Size:</strong> ${config.pageSize}</p>
<p><strong>Spams Filter:</strong> ${config.spamsFilter ? 'Enabled' : 'Disabled'}</p>
<p><strong>Signature:</strong></p>
<pre>${config.signature}</pre>
<br/>
<a href="/settings">Edit Settings</a>
</body>
</html>