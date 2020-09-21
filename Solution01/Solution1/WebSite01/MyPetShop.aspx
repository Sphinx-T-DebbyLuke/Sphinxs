<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyPetShop.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>认识常用XHTML5元素</title>
    <link rel="stylesheet" type="text/css" href="css/MyStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
     <header>
          <img src="images/logo.gif"/>
     </header>
    <div>
            <article>
            <div>
                <div class="leftDiv">
                    <nav>
                        <ul>
                            <li><a href="#">介绍</a><br /></li>
                            <li><a href="#">数据库设计</a>  </li>
                        </ul>
                    </nav>
                </div>
                <div class="rightDiv">
                    <div>
                    <aside>
                        <h2>MyPetShop</h2>
                        <p>MyPeishop是本书提供的一-个Web应用程序， 用来展示基于ASPNET三层架构的Web应用程序开发技术。</p>
                    </aside>
                    <section>
                          <h3>功能模块</h3>
                        <p>MyPeshop包括前台商品浏览、用户管理。购物车，订单结算。后台管理等模块。</p>
                    </section>
                    </div>
                </div>
            </div>
            
            </article>
    </div>
        <footer class=" tobottom">
                 <p class="tocenter">Copyright 2018 MyPetShop</p>
      </footer>
    </form>
</body>
</html>
