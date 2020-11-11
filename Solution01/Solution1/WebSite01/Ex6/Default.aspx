<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Ex6_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>猴子</asp:ListItem>
            <asp:ListItem>大象</asp:ListItem>
            <asp:ListItem>熊猫</asp:ListItem>
            <asp:ListItem>老虎</asp:ListItem>
            <asp:ListItem>斑马</asp:ListItem>
            <asp:ListItem>长颈鹿</asp:ListItem>
            <asp:ListItem>猫头鹰</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="addCartBtn" runat="server" OnClick="addCartBtn_Click" Text="加入购物车" />
&nbsp;
        <asp:Button ID="showCartBtn" runat="server" OnClick="showCartBtn_Click" Text="查看购物车" />
    
    </div>
    </form>
</body>
</html>
