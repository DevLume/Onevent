using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Onevent.Models;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public IQueryable<Category> GetCategories()
    {
        var _db = new Onevent.Models.EventContext();
        IQueryable<Category> query = _db.Categories;
        return query;
    }
}