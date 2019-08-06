using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(fypManagment.Startup))]
namespace fypManagment
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
