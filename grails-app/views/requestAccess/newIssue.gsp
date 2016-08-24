<%--
  Created by IntelliJ IDEA.
  User: Suryaraj
  Date: 6/30/2016
  Time: 11:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Projects</title>
</head>

<body>

<h1>Access Request</h1>
<g:form controller="requestAccess" action="save" enctype="multipart/form-data">
    <table>
        <tr>
            <td>Tracker</td>
            <td><select name="tracker">
                <option value="access request">Access Request</option>
            </select></td>
        </tr>
        <tr>
            <td>Subject</td>
            <td><input name="subject" type="text"></></td>
        </td>
        </tr>
        <tr>
            <td>Description</td>
            <td><textarea name="description"></textarea></td>
        </tr>
        <tr>
            <td>Status</td>
            <td><select name="status">
                <option value="new">New</option>
                <option value="feedback">Feedback</option>
                <option value="in progress">In Progress</option>
                <option value="resolved">Resolved</option>
                <option value="verified">Verified</option>
                <option value="closed">Closed</option>
                <option value="deferred">Deferred</option>
                <option value="rejected">Rejected</option>
            </select>
            </td>
        </tr>
        <tr>
            <td>Start date</td>
            <td><input name="startDate" type="date"></td>
        </tr>
        <tr>
            <td>Priority</td>
            <td><select name="priority">
                <option value="normal">Normal</option>
                <option value="high">High</option>
                <option value="urgent">Urgent</option>
                <option value="immediate">Immediate</option>
                <option value="low (long term)">Low (long term)</option>
            </select>

            </td>
        </tr>
        <tr>
            <td>Due date</td>
            <td><input name="dueDate" type="date"></td>
        </tr>
        <tr>
            <td>Assignee</td>
            <td><select name="assignee">
                <g:each in="${personList}" var="p">
                    <option value="${p.email}">${p.firstName}&nbsp;${p.lastName}</option>
                </g:each>
            </select></td>
        </tr>
        <tr>
            <td>Access Type</td>
            <td><select name="accessType" onscroll="true">
                <option value="svn">SVN</option>
                <option value="ssh">SSH<option>
                <option value="remote desktop">Remote Desktop</option>
                <option value="port">Port</option>
                <option value="sudo">Sudo</option>
                <option value="administrator">Administrator</option>
                <option value="wifi">WIFI</option>
                <option value="ftp">LAN</option>
                <option value="other">Other</option>
            </select></td>
        </tr>
        <tr>
            <td>Files</td>
            <td><input type="file" name="files"></td>
        </tr>
        <tr>
            <td>Watchers</td>
            <td><input type="text" name="watchers" placeholder="search for watchers to add"/></td>
        </tr>
    </table>
    <g:submitButton name="Create"></g:submitButton>
</g:form>

 <g:submitButton name="Create and continue"></g:submitButton>  <tr>Preview</tr>

</body>
</html>