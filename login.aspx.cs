using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["Conn"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
		string sql = "INSERT INTO student(name, number, address, phone) VALUES ('" + this.Txt_LoginName.Value + "', '" + this.Txt_Password.Value + "', 'A 449 Sect 19, DELHI', '180888888888')";
		SqlCommand cmd = new SqlCommand(sql, conn);
		cmd.ExecuteNonQuery();
		this.Response.Redirect("default.aspx");
    }

}