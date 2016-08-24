<%--
  Created by IntelliJ IDEA.
  User: Suryaraj
  Date: 6/28/2016
  Time: 4:18 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>

<div>
    %{--<ul>
        <li><g:link controller="requestAccess" action="issues">Issues</g:link></li>
        <li><g:link controller="requestAccess" action="newIssue">New Issue</g:link> </li>
        <li><g:link controller="desktopIssues" action="index">Desktop Issues</g:link> </li>
        <li><g:link controller="networkIssues" action="index">Network Issues</g:link> </li>
        <li><g:link controller="revokeAccess" action="index">Revoke Access</g:link> </li>
        <li><g:link controller="softwareIssues" action="index">Software Issues</g:link> </li>
    </ul>--}%

    <div>
        <table>
            <tr>
                <td><g:link controller="requestAccess" action="issues">Issues</g:link></td>
                <td><g:link controller="requestAccess" action="newIssue">New Issue</g:link></td>
            </tr>
            <tr>
                <td><g:link controller="desktopIssues" action="index">Desktop Issues</g:link></td>
                <td><g:link controller="networkIssues" action="index">Network Issues</g:link></td>
            </tr>
            <tr>
                <td><g:link controller="revokeAccess" action="index">Revoke Access</g:link></td>
                <td><g:link controller="softwareIssues" action="index">Software Issues</g:link></td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>