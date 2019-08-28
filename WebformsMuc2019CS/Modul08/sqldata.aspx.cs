using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.Modul08
{
    public partial class sqldata : System.Web.UI.Page
    {
        public List<string> liste { get; set; }= new List<string>();
  
        protected void Page_Load(object sender, EventArgs e)
        {
            var liste = new List<Cities>();

            using (var con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["NorthwindConnectionString1"].ConnectionString))
            {
                var sql = "select city, count(*) as anzahl from customers group by city order by city";
                //datatable ist bäh -generische Liste
                var cmd = new SqlCommand(sql,con);
                con.Open();
                var rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                  
                    liste.Add(new Cities { 
                        Anzahl =int.Parse( rd["Anzahl"].ToString()),
                        City = rd["City"].ToString() });
                }

            }
            ListViewCity.DataSource = liste;
            ListViewCity.DataBind();

        }

        
        protected void ListViewCity_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            //e.Item.DataItem.City
            liste.Clear();
            using (var con = new SqlConnection(
              ConfigurationManager.ConnectionStrings["NorthwindConnectionString1"].ConnectionString))
            {
                
                var sql = "select companyname from customers where city='" + ((Cities)e.Item.DataItem).City + "'";

                var cmd = new SqlCommand(sql, con);
                con.Open();
                var rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    liste.Add(rd.GetString(0));

                }
                var rpt = (Repeater)e.Item.FindControl("rptKunden");
                rpt.DataSource = liste;
                rpt.DataBind();

            }




        }
    }
    public class Cities
    {
        public string City { get; set; }
        public int Anzahl { get; set; }
    }
}