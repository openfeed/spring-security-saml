<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 1/27/16
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="uri" value="${req.requestURI}" />



<c:if test="${pageContext.request.method=='GET'}">
    <c:if test="${empty(param.name)}">
        <c:if test="${pageContext.request.serverName eq 'openfeedportal.com'}">
            <c:redirect url="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}/sso/saml/login/alias/sp12">
                <c:param name="idp" value="http://openfeed.idpee.com"></c:param>
            </c:redirect>
        </c:if>
        <c:if test="${pageContext.request.serverName eq 'reactivetick.com'}">
            <c:redirect url="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}/sso/saml/login/alias/sp10">
                <c:param name="idp" value="http://openfeed.idpee.com"></c:param>
            </c:redirect>
        </c:if>
        <c:if test="${pageContext.request.serverName eq 'admin-dev.myalcon.eu.novartis.net'}">
            <c:redirect url="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}/sso/saml/login/alias/sp8">
                <c:param name="idp" value="https://phchbs-ul200001.eu.novartis.net:9443/fed/idp"></c:param>
            </c:redirect>
        </c:if>
        <c:if test="${pageContext.request.serverName eq 'admin-stg.myalcon.eu.novartis.net'}">
            <c:redirect url="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}/sso/saml/login/alias/sp8">
                <c:param name="idp" value="https://phchbs-ul200001.eu.novartis.net:9443/fed/idp"></c:param>
            </c:redirect>
        </c:if>
        <c:if test="${pageContext.request.serverName eq 'admin.myalcon.eu.novartis.net'}">
            <c:redirect url="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}/sso/saml/login/alias/sp8">
                <c:param name="idp" value="https://phchbs-ul200001.eu.novartis.net:9443/fed/idp"></c:param>
            </c:redirect>
        </c:if>
    </c:if>
</c:if>

<%--<%
    // New location to be redirected
    String site = new String("https://admin-dev.myalcon.eu.novartis.net/sso/saml/login/alias/sp8?idp=https%3A%2F%2Fphchbs-ul200001.eu.novartis.net%3A9443%2Ffed%2Fidp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
%>--%>

