using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Onevent.Startup))]
namespace Onevent
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
