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

    public IQueryable<Event> Events;
    public EventContext eventDataContext;

    protected AsmensDuomenuApdorotojas ada;

    protected void Page_Load(object sender, EventArgs e)
    {
        eventDataContext = new EventContext();
        Events = eventDataContext.Events;
        ada = new AsmensDuomenuApdorotojas();
    }

    public void Submit(object sender, EventArgs e)
    {
        RenginiuTvarkytojas rt = new RenginiuTvarkytojas();
        Event ev = null;
        try
        {
            ev = new Event
            {
                EventID = 6,
                EventName = nameInput.Text,
                Description = descriptionInput.Text,
                Address = addressInput.Text,
                OrganizatorEmail = organizatorInput.Text,
                Approved = true,
                UnitPrice = double.Parse(ticketPriceInput.Text),
                TicketCount = int.Parse(TicketCountInput.Text),
                
                //ignorinam kategorijas          
                Category = new Category
                {
                    CategoryID = 1,
                    CategoryName = "Koncertas",
                }
            };
        }
        catch (FormatException ex)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('"+ex.ToString()+"')", true);
        }

        if (ev != null)
        {
            Tuple<bool, string> checkRes = rt.CheckEventData(ev);
            if (checkRes.Item1)
            {
                bool addRes = rt.AddEvent(ev, eventDataContext);
                if (addRes == false)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Įvyko klaida įvedant renginio duomenis, bandykite dar kartą')", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Renginys sėkmingai įvestas į duomenų bazę')", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Blogai suvesti renginio duomenys, patikrinkite, ar ivestas teisingas el.paštas')", true);
            }
        }
    }

}