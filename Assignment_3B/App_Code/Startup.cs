using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Assignment_3B.Startup))]
namespace Assignment_3B
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
