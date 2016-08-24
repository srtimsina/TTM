<%--
  Created by IntelliJ IDEA.
  User: Suryaraj
  Date: 7/26/2016
  Time: 1:17 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Projects</title>
</head>

<body>

<g:form controller="softwareIssues" action="save">
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
            <option value="suryaraj.timsina@deerwalk.edu.np">Suryaraj Timsina</option>
            <option value="skmaharjan@deerwalk.com">Sudhir K. Maharjan</option>
            <option value="sanjeev budha">Sanjeev Budha</option>
            <option value="suman.thapa@deerwalk.edu.np">Suman Thapa</option>
            <option value="sameer koirala">Sameer Koirala</option>
            <option value="sagar giri">Sagar Giri</option>
            <option value="asim regmi">Asim Regmi</option>
            <option value="saurav thapa">Saurav Thapa</option>
            <option value="sujan thapa">Sujan Thapa</option>
            <option value="govinda thapa">Govinda Thapa</option>
            <option value="prabin rai">Prabin Rai</option>
            <option value="rishav bhurtal">Rishav Bhurtal</option>
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
</body>
</html>