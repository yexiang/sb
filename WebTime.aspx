<%-- Fig. 21.4: WebTime.aspx --%>
   <%-- A page that displays the current time in a Label. --%>
   <%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebTime.aspx.cs"
  Inherits="WebTime" EnableSessionState="False" %>
   
   <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
  "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
 <html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
<title>A Simple Web Form Example</title>
<meta name="renderer" content="webkit">
      <meta name="viewport" content="width=device-width, initial-scale=1">
 </head>
 <body>
<form id="form1" runat="server">
   <div>
 <h2>Current time on the Web server:</h2>
  <p>
 <asp:Label ID="timeLabel" runat="server" BackColor="Black" Font-Size="XX-Large" ForeColor="Yellow" EnableViewState="False"></asp:Label>
  </p>
   </div>
   
   <%= count%>
</form>
 </body>
 </html>