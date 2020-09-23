<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hideAD.aspx.cs" Inherits="hideAD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #adDiv{
            width:200px;
            height:300px;
            background-color:gray;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="adDiv">
        这是一块广告区域
    </div>
    </form>

    <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#adDiv").click(function () {
                $(this).hide();
            });
        });

    </script>
</body>
</html>
