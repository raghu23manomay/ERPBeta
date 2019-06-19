using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(XRP.Startup))]
namespace XRP
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
