<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Ex4_2_Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtDisplay" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="1" Width="32px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="2" Width="32px" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="3" Width="32px" />
        <br />
        <asp:Button ID="Button_Add" runat="server" OnClick="Button_Add_Click" Text="+" Width="32px" />
        <asp:Button ID="Button_Del" runat="server" OnClick="Button_Del_Click" Text="-" Width="32px" />
        <asp:Button ID="Button_Submit" runat="server" Height="26px" OnClick="Button_Submit_Click" Text="=" Width="32px" />
    
    </div>
    </form>
</body>
</html>
