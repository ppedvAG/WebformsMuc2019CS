using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.Modul09
{
    public partial class KundenListeOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<Customers> rptKunden_GetData()
        {
            var db = new EFNorthwind();
            return db.Customers.Take(10);
        }
    }
}