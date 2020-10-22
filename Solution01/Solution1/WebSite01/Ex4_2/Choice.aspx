<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Choice.aspx.cs" Inherits="Ex4_2_Choice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
        <asp:Label ID="lbl_display" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
