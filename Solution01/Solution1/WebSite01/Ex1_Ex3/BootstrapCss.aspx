<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BootstrapCss.aspx.cs" Inherits="BootstrapCss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>利用Bootstrap和自定义css进行页面布局</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <header class=" header">

        <asp:Image ID="ImageLogo" runat="server" ImageUrl="~/images/logo.gif" />
        <ul class="nav nav-pills">
            <li class="navDark">
                <asp:LinkButton ID="LinkbtnDefault" runat="server">首页</asp:LinkButton>
            </li>
            <li class="navDark">
                <asp:LinkButton ID="LinkbtnRegister" runat="server">注册</asp:LinkButton>
            </li>
            <li class="navDark">
                <asp:LinkButton ID="LinkbtnLogin" runat="server">登录</asp:LinkButton>
            </li>
            <li class="navDark">
                <asp:LinkButton ID="LinkbtnCart" runat="server" ForeColor="White">购物车</asp:LinkButton>
            </li>
            <li class="navDark">
                <asp:LinkButton ID="LinkbtnSiteMap" runat="server" ForeColor="White">网站地图</asp:LinkButton>
            </li>
        </ul>
        <div class="status">
            登录状态
        </div>
    </header>
    <nav class="sitemap">
        您的位置：
    </nav>
    </form>
</body>
</html>
