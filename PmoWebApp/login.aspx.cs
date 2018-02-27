using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PmoWebApp
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("dashboard.aspx");
            }
        }
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            conn.ConnectionString = @"Data Source=pmoserver.database.windows.net;Initial Catalog=PMOdb;Integrated Security=False;User ID=yongrui;Password=Mushroom4;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            cmd.Connection = conn;
            String userID = userTxt.Text;
            String password = passTxt.Text;
            string sql = "select count(*) from Person where UserID='" + userID + "' AND PWID='" + password + "'";
            string name = "select Person Name from Person where UserID = '" + userID + "' AND PWID = '" + password + "'";

            try
            {
                conn.Open();
                cmd.CommandText = sql;
                //cmd.ExecuteNonQuery();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = userID;
                    Response.Redirect("dashboard.aspx");
                }
                conn.Close();
            }
            catch (Exception ex)
            {
                conn.Close();
            }

        }

    }


}