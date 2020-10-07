﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Grade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        float fgrade = float.Parse(TextBox1.Text);
        int igrade = (int)(fgrade / 10);
        switch (igrade)
        {
            case 10:
            case 9:
                Label1.Text = "优秀";break;
            case 8:
                Label1.Text = "良好"; break;
            case 7:
                Label1.Text = "中等"; break;
            case 6:
                Label1.Text = "及格"; break;
            default:
                Label1.Text = "不及格"; break;
        }
    }
}