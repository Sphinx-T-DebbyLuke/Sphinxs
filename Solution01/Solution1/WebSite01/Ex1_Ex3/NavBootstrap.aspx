<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NavBootstrap.aspx.cs" Inherits="NavBootstrap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>简易书籍网页</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-menu" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand">MyPetShop</a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="#">首页</a></li>
                    <li><a href="#">注册</a></li>
                    <li><a href="#">登录</a></li>
                    <li><a href="#">购物车</a></li>
                    <li><a href="#">网站地图</a></li>
                </ul>
            </div>
        </div>
    </nav>
    </form>

    <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
