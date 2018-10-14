using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using Onevent.Logic;

public partial class AddToCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string rawId = Request.QueryString["EventID"];
        int eventId;
        if (!String.IsNullOrEmpty(rawId) && int.TryParse(rawId, out eventId))
        {
            using (ShoppingCartActions usersShoppingCart = new ShoppingCartActions())
            {
                usersShoppingCart.AddToCart(Convert.ToInt16(rawId));
            }
        
        }
        else
        {
            Debug.Fail("ERROR : We should never get to AddToCart.aspx without an EventId.");
            throw new Exception("ERROR : It is illegal to load AddToCart.aspx without setting an EventId.");
        }
        Response.Redirect("ShoppingCart.aspx");
    }
}
