<%
    if (session.getAttribute("msg") != null) {
%>
<div class="alert text-success text-center">
    <strong><%= session.getAttribute("msg")%></strong>
</div>
<%
        session.removeAttribute("msg");
    }
%>
<%
    if (session.getAttribute("error") != null) {
%>
<div class="alert text-success text-center">
    <strong><%= session.getAttribute("error")%></strong>
</div>
<%
        session.removeAttribute("error");
    }
%>