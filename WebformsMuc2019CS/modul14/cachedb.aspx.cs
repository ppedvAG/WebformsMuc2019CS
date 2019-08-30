using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebformsMuc2019CS.Modul09;

namespace WebformsMuc2019CS.modul14
{
    public partial class cachedb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var daten = new List<Customers>();
            if (Cache["db"] == null)
            {
                var db = new EFNorthwind();
                var q = db.Customers.ToList();
                Cache.Insert("db", q,null, DateTime.Now.AddDays(1),new TimeSpan(1,0,0),System.Web.Caching.CacheItemPriority.);
                daten = q;
            }
            else
            {
                daten = Cache["db"] as List<Customers>;


            }



        }
    }
}