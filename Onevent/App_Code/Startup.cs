using Microsoft.Owin;
using Owin;
using System.Data.Entity;
using Onevent.Models;

[assembly: OwinStartupAttribute(typeof(Onevent.Startup))]
namespace Onevent
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);

            // Initialize the product database.
            Database.SetInitializer(new EventDatabaseInitializer());
        }
    }
}
