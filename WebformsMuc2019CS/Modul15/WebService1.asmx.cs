using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using WebformsMuc2019CS.Modul09;

namespace WebformsMuc2019CS.Modul15
{
    /// <summary>
    /// Zusammenfassungsbeschreibung für WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [ScriptService]
    // Wenn der Aufruf dieses Webdiensts aus einem Skript zulässig sein soll, heben Sie mithilfe von ASP.NET AJAX die Kommentarmarkierung für die folgende Zeile auf. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        [ScriptMethod(ResponseFormat =ResponseFormat.Json, UseHttpGet = true)]
        public List<Customer2> GetCustomers()
        {
            var db = new EFNorthwind();
            db.Configuration.LazyLoadingEnabled = false;
            var cust= db.Customers.Take(10).ToList();
            var ret = new List<Customer2>();
            //serialisierung wegen Order Schachtelung
            foreach (var item in cust)
            {
      
                ret.Add(new Customer2() { CustomerID=item.CustomerID,
                    CompanyName=item.CompanyName,
                    ContactName=item.ContactName });
            }
            return ret;
          
        }
    }
        public class Customer2
        {

            public string CustomerID { get; set; }

            public string CompanyName { get; set; }

            public string ContactName { get; set; }
        }
   
}
