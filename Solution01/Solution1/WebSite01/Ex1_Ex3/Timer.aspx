<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Timer.aspx.cs" Inherits="Timer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>利用jQuery实现一个时间数据来源于客户端的时钟</title>
</head>
<body onload="refresh()">
    <form id="form1" runat="server">
    <div id="date">
        
    </div>
    </form>

    <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function refresh() {
            $("#date").text((new Date()).toString());
            window.setTimeout("refresh()",1000);
        }
    </script>
</body>
</html>
