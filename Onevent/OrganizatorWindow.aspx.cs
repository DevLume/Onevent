using Onevent.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrganizatorWindow : Page
{
    public string description = "KEK THAT's ALL?";
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    public void Submit(object sender, EventArgs e)
    {
        RenginiuTvarkytojas rt = new RenginiuTvarkytojas();

        Event ev = new Event
        {
            EventID = 6,
            EventName = nameInput.Text,
            Description = descriptionInput.Text,
            Address = addressInput.Text,
            OrganizatorEmail = organizatorInput.Text,
            Approved = true,
            UnitPrice = int.Parse(ticketPriceInput.Text),
            TicketCount = int.Parse(TicketCountInput.Text),
            Category = new Category
            {
                CategoryID = 1,
                CategoryName = "Koncertas",
            }
        };

        Tuple<bool, string> a = rt.CheckEventData(ev);
        Console.Write("noop");
    }

}