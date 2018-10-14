<%@ Application Language="C#" %>
<%@ Import Namespace="Onevent" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Data.Entity" %>
<%@ Import Namespace="Onevent.Models" %>


<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);

        Database.SetInitializer(new EventDatabaseInitializer());

        EventContext con = new EventContext();
        con.Database.Initialize(true);
        con.Database.CreateIfNotExists();
    }

</script>
