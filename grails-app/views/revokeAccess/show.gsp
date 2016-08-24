<%--
  Created by IntelliJ IDEA.
  User: Suryaraj
  Date: 7/26/2016
  Time: 2:45 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>
<table>
    <thead>
    <tr>
        <th>Tracker</th>
        <th>Subject</th>
        <th>Description</th>
        <th>Status</th>
        %{--<th>Start Date</th>--}%
        %{--<th>Due Date</th>--}%
        <th>Assignee</th>
        %{--<th>Watchers</th>--}%
    </tr>
    </thead>

    <tbody>
    <g:each in="${desktopList}" var="d">
        <tr>
            <td>${d.tracker}</td>
            <td>${d.subject}</td>
            <td>${d.description}</td>
            <td>${d.status}</td>
            <td>${d.assignee}</td>
        </tr>
    </g:each>
    </tbody>
</table>
</body>
</html>