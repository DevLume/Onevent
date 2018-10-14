using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Onevent.Models;
using System.Web.ModelBinding;

public partial class EventList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public IQueryable<Event> GetEvents([QueryString("id")] int? categoryId)
    {
        var _db = new Onevent.Models.EventContext();
        IQueryable<Event> query = _db.Events;
        if (categoryId.HasValue && categoryId > 0)
        {
            query = query.Where(p => p.CategoryID == categoryId);
        }
        return query;
    }
}