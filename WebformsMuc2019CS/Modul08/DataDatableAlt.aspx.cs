using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.Modul07
{
    public partial class DataDatableAlt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(
               ConfigurationManager.ConnectionStrings["NorthwindConnectionString1"].ConnectionString))
                {
                    var cmd = new SqlCommand("select * from Customers ", con);
                    var da = new SqlDataAdapter(cmd);
                    var dt = new DataTable();
                    con.Open();
                    da.Fill(dt);

                    ListView1.DataSource
                            = dt;
                }
                ListView1.DataBind();
            }

        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "hannes":
                    break;
                default:
                    break;
            }

        }

        
    }
}