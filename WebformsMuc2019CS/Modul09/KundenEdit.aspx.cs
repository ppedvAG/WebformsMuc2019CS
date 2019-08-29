using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.Modul09
{
    public partial class KundenEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Der ID-Parameter sollte dem DataKeyNames-Wert entsprechen, der für das Steuerelement
        // festgelegt wurde, oder mit einem Wertanbieterattribut versehen werden, z. B. [QueryString]int id
        public WebformsMuc2019CS.Modul09.Customers FormView1_GetItem([FriendlyUrlSegments(0)] string CustomerID)
        {
            var db = new EFNorthwind();
            return db.Customers.Find(CustomerID);
        }

        // Der Name des ID-Parameters sollte dem für das Steuerelement festgelegten DataKeyNames-Wert entsprechen.
        public void FormView1_UpdateItem(int id)
        {
            WebformsMuc2019CS.Modul09.Customers item = null;
            // Element hier laden, z. B. item = MyDataLayer.Find(id);
            if (item == null)
            {
                // Das Element wurde nicht gefunden.
                ModelState.AddModelError("", String.Format("Das Element mit der ID {0} wurde nicht gefunden.", id));
                return;
            }
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                // Änderungen hier speichern, z. B. MyDataLayer.SaveChanges();

            }
        }

        // Der Name des ID-Parameters sollte dem für das Steuerelement festgelegten DataKeyNames-Wert entsprechen.
       
    }
}