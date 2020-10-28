<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GroupValidation.aspx.cs" Inherits="Ex5_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td> 用户名：</td><td> <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvUsername" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="请输入用户名！" ForeColor="Red" SetFocusOnError="True" ValidationGroup="groupName">*</asp:RequiredFieldValidator>
                <asp:Button ID="btnValidateName" runat="server" OnClick="btnValidateName_Click" Text="用户名是否可用" ValidationGroup="groupName" />
                <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>  密码：</td><td> <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="请输入密码！" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>   确认密码：</td><td><asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvPassword2" runat="server" ControlToValidate="txtPassword2" Display="Dynamic" ErrorMessage="请输入确认密码！" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CVPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword2" Display="Dynamic" ErrorMessage="密码与确认密码不一致！" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>   生日：</td><td><asp:TextBox ID="txtBrithday" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvBirthday" runat="server" ControlToValidate="txtBrithday" Display="Dynamic" ErrorMessage="请输入生日！" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RVBirthday" runat="server" ControlToValidate="txtBrithday" Display="Dynamic" ErrorMessage="日期应在1900-1-1到2020-1-1之间！" ForeColor="Red" MaximumValue="2020-1-1" MinimumValue="1900-1-1" SetFocusOnError="True" Type="Date"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>   电话号码：</td><td><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="请输入电话号码！" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RevPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="电话号码格式应为021-66798304!" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{3}-\d{8}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>  身份证号：</td><td><asp:TextBox ID="txtCard" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvCard" runat="server" ControlToValidate="txtCard" Display="Dynamic" ErrorMessage="请输入身份证号！" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CsvCard" runat="server" ControlToValidate="txtCard" Display="Dynamic" ErrorMessage="身份证号错误！" ForeColor="Red" OnServerValidate="CsvCard_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                </td>
            </tr>
        </table>

                    <br />
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="确认" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:ValidationSummary ID="VsSubmit" runat="server" ShowMessageBox="True" ShowSummary="False" />
        <asp:ValidationSummary ID="VsName" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="groupName" />
    </div>
    </form>
</body>
</html>
