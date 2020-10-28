using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex5_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CsvCard_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string cid = args.Value;
        args.IsValid = true;
        try
        {
            DateTime.Parse(cid.Substring(6, 4) + "-" + cid.Substring(10, 2) + "-" + cid.Substring(12, 2));

        }
        catch
        {
            args.IsValid = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Page.IsValid)
        {
            Label1.Text = "验证通过！";
            //TODO:将注册信息存入数据库
        }
    }
    protected void btnValidateName_Click(object sender, EventArgs e)
    {
        //leaf不存在，实际将会与数据库中的用户名做比较
        if (txtUsername.Text == "leaf")
        {
            lblName.Text = "抱歉！该用户名已被占用！";
        }
        else
        {
            lblName.Text = "恭喜！该用户名可用";
        }
    }
}