<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Ex4_2_Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="学年："></asp:Label>
        <asp:DropDownList ID="ddl_year" runat="server">
        </asp:DropDownList>
        <asp:Label ID="Label2" runat="server" Text="学期："></asp:Label>
        <asp:DropDownList ID="ddl_term" runat="server">
        </asp:DropDownList>
        <asp:Label ID="Label3" runat="server" Text="分院："></asp:Label>
        <asp:DropDownList ID="ddlCollage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCollage_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Label ID="Label4" runat="server" Text="教师："></asp:Label>
        <asp:DropDownList ID="ddl_teacher" runat="server" AutoPostBack="True">
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
