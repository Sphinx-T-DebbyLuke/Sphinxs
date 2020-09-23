<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CloseWindow.aspx.cs" Inherits="CloseWindow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>利用javascript关闭当前窗口</title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btnClose" runat="server" Text="closeWindow" OnClientClick="javascript:window.close();return false;" />
        <br />
        <a href="#" onclick="javascript:window.close();return false;">关闭窗口</a>
    </div>
    </form>

    <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
</body>
</html>
