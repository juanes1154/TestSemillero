using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Reflection;

namespace SocialNetworks
{
    class Factory
    {
        public Web CreateWeb(string Network)
        {
            var assembly = Assembly.GetExecutingAssembly();

            var target = assembly.GetTypes().First(N => N.Name == Network);

            return (Web)Activator.CreateInstance(target);
        }
    }
}
