using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex4_UserInfoPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string name = txtName.Text;
        string birthday = txtBirthday.Text;
        UserInfo userInfo = new UserInfo(name, DateTime.ParseExact(birthday, "yyyyMMdd", null));
        if (Int32.Parse(birthday) < 19000101 || Int32.Parse(birthday) > Int32.Parse(DateTime.Now.ToString("yyyyMMdd")))
        {
            Response.Write(userInfo.ValidateBirthday());
        }
        else
        {
            Response.Write(userInfo.DecideAge());
        }
    }
}