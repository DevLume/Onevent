using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Onevent.Models;
using System.Web.ModelBinding;

public partial class EventDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public IQueryable<Event> GetEvent([QueryString("eventID")] int? eventId)
    {
        var _db = new Onevent.Models.EventContext();
        IQueryable<Event> query = _db.Events;
        if (eventId.HasValue && eventId > 0)
        {
            query = query.Where(p => p.EventID == eventId);
        }
        else
        {
            query = null;
        }
        return query;
    }
}