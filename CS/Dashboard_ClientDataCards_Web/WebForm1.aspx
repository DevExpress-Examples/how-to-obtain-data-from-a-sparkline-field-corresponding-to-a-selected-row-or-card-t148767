﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" 
         Inherits="Dashboard_ClientDataCards_Web.WebForm1" %>

<%@ Register Assembly="DevExpress.Dashboard.v15.1.Web, Version=15.1.7.0, 
                                                       Culture=neutral, 
                                                       PublicKeyToken=b88d1754d700e49a"
             Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
                      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="myPopup"></div>
    <div>
        <dx:ASPxDashboardViewer ID="ASPxDashboardViewer1" runat="server" 
            DashboardSource="<%# typeof(Dashboard_ClientDataCards_Web.Dashboard1) %>"
            ClientSideEvents-Init="function(s, e) { initPopup(); }" 
            ClientSideEvents-ItemClick="function(s, e) { getClientData(e); }"
            Width="1200"
            >
        </dx:ASPxDashboardViewer>
    </div>
    </form>
</body>
</html>

<script type="text/javascript" src="<%= Page.ResolveClientUrl("~/Scripts/ClientData.js") %>"></script>




