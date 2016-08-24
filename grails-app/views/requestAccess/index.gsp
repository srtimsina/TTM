<%--
  Created by IntelliJ IDEA.
  User: Suryaraj
  Date: 7/1/2016
  Time: 9:10 AM
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
                <th>Access Type</th>
                %{--<th>Watchers</th>--}%
            </tr>
        </thead>

        <tbody>
        <g:each in="${issueList}" var="issue">
            <tr>
                <td>${issue.tracker}</td>
                <td>${issue.subject}</td>
                <td>${issue.description}</td>
                <td>${issue.status}</td>
                %{--<td>${issue.startDate}</td>--}%
                %{--<td>${issue.dueDate}</td>--}%
                <td>${issue.assignee}</td>
                <td>${issue.accessType}</td>
                %{--<td>${issue.watchers}</td>--}%
            </tr>
        </g:each>
        </tbody>
    </table>
</body>
</html>