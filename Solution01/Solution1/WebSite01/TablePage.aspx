<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TablePage.aspx.cs" Inherits="TablePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>table布局</title>
    <link rel="stylesheet" type="text/css" href="css/MyStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="leftDiv">
                 <img src="images/logo.gif"/>    
         </div>
        <div class="rightDiv">
            <table class="tablecellspacing">
                <tr><th>首页</th><th>注册</th><th>登录</th><th>购物车</th><th>网站地图</th></tr>
                <tr><td colspan="5">登录状态</td></tr>
            </table>
         </div>
    </div>
     <footer class=" tobottom">
          <p>您的位置</p>
      </footer>
    </form>
</body>
</html>
