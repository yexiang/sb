<%@ Page Language="C#" codePage="65001" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="utf-8" />
<title>系统</title>
</head>
<body>
  <form id="form1" runat="server">
    <div valign="middle">

      <table valign="center" align="center" border="1" cellpadding="0" cellspacing="2" bordercolorlight="#003366" bordercolordark="#ffffff">

        <tr id="addData_TR" class="STYLE1" >

          <td colspan="2" align="center">系统</td>
        </tr>

        <tr class="STYLE1">
          <td>姓名</td>
          <td><input name="userName" type="text" id="Txt_LoginName" runat="server"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txt_LoginName"
          ErrorMessage="姓名">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr class="STYLE1">
          <td>密码</td>
          <td><input name="psw" type="text" id="Txt_Password" value="s16404" runat="server" style="width: 149px"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txt_Password"
          ErrorMessage="密码">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
          <td colspan="2" align="center" style="height: 26px">
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text=" 确  定 " />

          <input type="button" value=" 取  消 " onclick="window.opener=null;window.close();" />
        </td>
        </tr>
      </table>
      
       <%= msg%>
    </div>
  </form>
</body>
</html>