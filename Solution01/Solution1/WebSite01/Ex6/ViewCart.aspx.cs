using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex6_ViewCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["cart"] == null)
            {
                Label1.Text = "没有选购任何宠物!";
                CheckBoxList1.Visible = false;
                clearCartBtn.Enabled = false;
            }
            else
            {
                string petstring = Session["cart"].ToString();
                //数组列表pets用于存储每个宠物名
                System.Collections.ArrayList pets = new System.Collections.ArrayList();
                int iposition = petstring.IndexOf(",");
                while (iposition != -1)
                {
                    string strpet = petstring.Substring(0, iposition);
                    if (strpet != "")
                    {
                        pets.Add(strpet);
                        //去掉字符串中之前添加过的宠物名
                        petstring = petstring.Substring(iposition + 1);
                        //iposition位置向后一个,
                        iposition = petstring.IndexOf(",");
                    }
                }
                Label1.Text = "购物车中现有宠物：";
                CheckBoxList1.DataSource = pets;
                CheckBoxList1.DataBind();
            }
        }
    }
    protected void clearCartBtn_Click(object sender, EventArgs e)
    {
        Session.Remove("cart");
        Label1.Text = "没有选购任何宠物！";
        CheckBoxList1.Visible = false;
        clearCartBtn.Enabled = false;
    }
    protected void contineToAddBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}