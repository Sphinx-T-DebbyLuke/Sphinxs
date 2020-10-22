using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex4_2_Course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//页面第一次加载
        {
            BindYear();
            BindTerm();
            BindColleage();
            BindTeacher();
        }
    }
    protected void BindYear()
    {
        ddl_year.Items.Clear();
        int startyear = DateTime.Now.Year - 10;//当前年前十年
        int currentyear = DateTime.Now.Year;
        for (int i = startyear; i <= currentyear; i++)
        {
            ddl_year.Items.Add(new ListItem((i-1).ToString()+"-"+i.ToString()));
        }
        //下拉列表默认选项
        ddl_year.SelectedValue = (currentyear - 1).ToString() + "-" + currentyear.ToString();
    }
    protected void BindTerm()
    {
        ddl_term.Items.Clear();
        for (int i = 1; i <= 2; i++)
        {
            ddl_term.Items.Add(i.ToString());
        }
    }
    protected void BindColleage()
    {
        ddlCollage.Items.Clear();
        ddlCollage.Items.Add(new ListItem("计算机学院"));
        ddlCollage.Items.Add(new ListItem("外语学院"));
        ddlCollage.Items.Add(new ListItem("信息工程学院"));
        ddlCollage.Items.Add(new ListItem("机电学院"));
    }
    protected void BindTeacher()
    {
        ddl_teacher.Items.Clear();
        switch (ddlCollage.SelectedValue)
        {
            case "计算机学院":
                ddl_teacher.Items.Add(new ListItem("曹仁"));
                ddl_teacher.Items.Add(new ListItem("李芳"));
                ddl_teacher.Items.Add(new ListItem("王芳"));
                break;
            case "外语学院":
                ddl_teacher.Items.Add(new ListItem("张强"));
                ddl_teacher.Items.Add(new ListItem("王一楠"));
                ddl_teacher.Items.Add(new ListItem("刘芳"));
                break;
            case "信息工程学院":
                ddl_teacher.Items.Add(new ListItem("刘海"));
                ddl_teacher.Items.Add(new ListItem("波涛"));
                ddl_teacher.Items.Add(new ListItem("响亮"));
                break;
            case "机电学院":
                ddl_teacher.Items.Add(new ListItem("朱东波"));
                ddl_teacher.Items.Add(new ListItem("叶亚奎"));
                break;
        }
    }
    protected void ddlCollage_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindTeacher();
    }
}