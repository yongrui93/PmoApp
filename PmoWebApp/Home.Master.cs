using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        }
    }
}