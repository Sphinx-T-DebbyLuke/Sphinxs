using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex6_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addCartBtn_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                if (Session["cart"] != null)
                {
                    //判断选择要添加的宠物是否已存在
                    if (Session["cart"].ToString().IndexOf(CheckBoxList1.Items[i].Text) != -1)
                    {
                        continue;
                    }
                }
                Session["cart"] += CheckBoxList1.Items[i].Text + ",";
            }
        }
    }
    protected void showCartBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCart.aspx");
    }
}