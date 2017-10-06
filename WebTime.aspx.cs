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
     
     public string count;
     protected SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["Conn"]);  
    protected void Page_Load(object sender, EventArgs e)  
    { 
    conn.Open();
    string sql = "DROP TABLE student";
    SqlCommand cmd = new SqlCommand(sql, conn);
    cmd.ExecuteQuery();
    
         sql = "CREATE TABLE student (id INTEGER IDENTITY (1, 1)  CONSTRAINT PKeyId PRIMARY KEY, name CHAR(50), number CHAR(50), phone CHAR(50), address CHAR(255))" ; 
         cmd = new SqlCommand(sql, conn);
try
{


ExecuteQuery("DROP TABLE MyTable", conn);

//cmd.ExecuteNonQuery(); 
sql = "INSERT INTO student(id, name, number, address, phone) VALUES (2, 'Ming Yao', 's16313', 'A 449 Sect 19, DELHI', '180888888888')" ;
cmd = new SqlCommand(sql, conn);
cmd.ExecuteNonQuery();
}
catch(SqlException ae)
{
count = ae.Message.ToString();
}
         sql = "SELECT name, number, address, phone FROM student";
        SqlDataAdapter da = new SqlDataAdapter(sql, conn);  
        DataTable dt = new DataTable();  
        da.Fill(dt);  
         if (dt.Rows.Count > 0)  
        {  
              count = dt.Rows.Count.ToString();
        }
    } 
     
  } // end class WebTime