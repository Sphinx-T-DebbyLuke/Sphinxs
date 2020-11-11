<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="Ex6_ViewCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="clearCartBtn" runat="server" OnClick="clearCartBtn_Click" Text="清空购物车" />
&nbsp;
        <asp:Button ID="contineToAddBtn" runat="server" OnClick="contineToAddBtn_Click" Text="继续添加" />
    
    </div>
    </form>
</body>
</html>
