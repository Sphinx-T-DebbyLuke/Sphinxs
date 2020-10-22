using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex4_2_Choice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label lblQuestion = new Label
        {
            ID = "lblQuestion",
            Text = "1.&nbsp;Web服务器控件不包括(&nbsp;&nbsp;&nbsp;&nbsp;)"
        };
        PlaceHolder1.Controls.Add(lblQuestion);
        RadioButtonList rbtChoice = new RadioButtonList
        {
            ID = "rbtChoice"
        };
        rbtChoice.Items.Add(new ListItem("A.Wizard","A"));
        rbtChoice.Items.Add(new ListItem("B.Input", "B"));
        rbtChoice.Items.Add(new ListItem("C.AdRotator", "C"));
        rbtChoice.Items.Add(new ListItem("D.Calendar", "D"));
        PlaceHolder1.Controls.Add(rbtChoice);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        RadioButtonList rbtChoice = (RadioButtonList)PlaceHolder1.FindControl("rbtChoice");
        lbl_display.Text = "您选择了：" + rbtChoice.SelectedValue;
    }
}