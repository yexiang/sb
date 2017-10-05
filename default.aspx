<%@ Page language="c#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html><head>
<title>Builder.com Repeater Example</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<style>
.alternate {
FONT-WEIGHT: bold;
COLOR: black;
FONT-FAMILY: Verdana, 'Times New Roman';
BACKGROUND-COLOR: yellow
}
.row {
FONT-WEIGHT: bold;
COLOR: black;
FONT-FAMILY: Verdana, 'Times New Roman';
BACKGROUND-COLOR: white
}
.footer {
FONT-WEIGHT: bold;
COLOR: red;
FONT-FAMILY: Verdana, 'Times New Roman';
BACKGROUND-COLOR: gray
}
.header {
FONT-WEIGHT: bold;
COLOR: yellow;
FONT-FAMILY: Verdana, 'Times New Roman';
BACKGROUND-COLOR: gray
}
.box {
BORDER-RIGHT: blue groove;
BORDER-TOP: blue groove;
DISPLAY: block;
VERTICAL-ALIGN: baseline;
OVERFLOW: auto;
BORDER-LEFT: blue groove;
CURSOR: wait;
BORDER-BOTTOM: blue groove;
FONT-FAMILY: verdana;
TEXT-ALIGN: center
}
body {
background: #333;
}
</style>
<script language="C#" runat="server">
private void Page_Load(object sender, System.EventArgs e) {
if (!IsPostBack) {
DataSet dset = new DataSet();
string conn = "server=(mssql6.gear.host);Initial Catalog=stu;UID=stu;PWD=Fx23_!S6oAG1";
string qry = "SELECT name, number, address, phone FROM student";
SqlDataAdapter sda = new SqlDataAdapter(qry, conn);
sda.Fill(dset);
Repeater1.DataSource = dset.Tables[0].DefaultView;
Repeater1.DataBind();
} }
</script></head>
<body MS_POSITIONING="GridLayout" bgColor="#00cc99">
<form id="Form1" method="post" runat="server">
<div class="box">
<asp:Repeater id="Repeater1" runat="server">
<HeaderTemplate>
<div class="header" id="header">Northwind Employees</div>
</HeaderTemplate>
<SeparatorTemplate><hr /></SeparatorTemplate>
<ItemTemplate><div class="row">
<%# ((DataRowView)Container.DataItem)["FirstName"] %>
<%# ((DataRowView)Container.DataItem)["LastName"] %><br>
<%# ((DataRowView)Container.DataItem)["Address"] %><br>
<%# ((DataRowView)Container.DataItem)["City"] %>,
<%# ((DataRowView)Container.DataItem)["Region"] %>
<%# ((DataRowView)Container.DataItem)["PostalCode"] %><br>
<%# ((DataRowView)Container.DataItem)["HomePhone"] %>
</div></ItemTemplate>
<AlternatingItemTemplate><div class="alternate">
<%# ((DataRowView)Container.DataItem)["FirstName"] %>
<%# ((DataRowView)Container.DataItem)["LastName"] %><br>
<%# ((DataRowView)Container.DataItem)["Address"] %><br>
<%# ((DataRowView)Container.DataItem)["City"] %>,
<%# ((DataRowView)Container.DataItem)["Region"] %>
<%# ((DataRowView)Container.DataItem)["PostalCode"] %><br>
<%# ((DataRowView)Container.DataItem)["HomePhone"] %>
</div></AlternatingItemTemplate>
<FooterTemplate><div class="footer">
<%# ((DataView)Repeater1.DataSource).Count + " student found." %>
</div></FooterTemplate>
</asp:Repeater></div></form></body></html>
