using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PmoWebApp
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Url.AbsolutePath.EndsWith("dashboard.aspx"))
            {
                dashboard.Attributes["class"] = "active";
            }
            else if (Request.Url.AbsolutePath.EndsWith("users.aspx"))
            {
                users.Attributes["class"] = "active";
            }
            else if (Request.Url.AbsolutePath.EndsWith("tables.aspx"))
            {
                tables.Attributes["class"] = "active";
            }
            else if (Request.Url.AbsolutePath.EndsWith("history.aspx"))
            {
                history.Attributes["class"] = "active";
            }

            SqlConnection conn = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            conn.ConnectionString = @"Data Source=pmoserver.database.windows.net;Initial Catalog=PMOdb;Integrated Security=False;User ID=yongrui;Password=Mushroom4;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            cmd.Connection = conn;
            string userName = Session["username"].ToString();
            string designationquery = "select Designation from Person where UserID='" + userName +"'";
            SqlCommand newCmd = new SqlCommand(designationquery, conn);
            conn.Open();
            string designation = newCmd.ExecuteScalar().ToString();
            if (designation == "Exective Agency")
            {
                history.Visible = true;
            }
            else
            {
                history.Visible = false;
            }
            conn.Close();


            
            string query = "Select Name from Person where UserID='" + userName + "'";
            SqlCommand command = new SqlCommand(query, conn);
            conn.Open();
            string name = command.ExecuteScalar().ToString();
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                welcomelabel.InnerText = "Welcome " + name;
            }
            conn.Close();
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["name"] = null;
            Response.Redirect("login.aspx");

        }
    }
}