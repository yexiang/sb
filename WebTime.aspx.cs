 // Fig. 21.5: WebTime.aspx.cs
// Code-behind file for a page that displays the current time.
using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;  

public partial class WebTime : System.Web.UI.Page
{
     // initializes the contents of the page
     protected void Page_Init( object sender, EventArgs e )
     {
        // display the server's current time in timeLabel
        timeLabel.Text = string.Format( "{0:D2}:{1:D2}:{2:D2}",
           DateTime.Now.Hour, DateTime.Now.Minute, DateTime.Now.Second );
     } // end method Page_Init
     
     
     protected SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["Conn"]);  
    protected void Page_Load(object sender, EventArgs e)  
    { 
        string sql = "SELECT name, number, address, phone FROM student";
        SqlDataAdapter cmd = new SqlDataAdapter(sql, conn);  
        DataTable dt = new DataTable();  
        cmd.Fill(dt);  
        //dt.Rows.Count 
        
    } 
     
  } // end class WebTime