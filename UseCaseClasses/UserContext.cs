using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserContext
/// </summary>
namespace Onevent.Models
{
    public class UserContext : DbContext
    {
        public UserContext() : base("Onevent")
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public DbSet<Naudotojas> Users { get; set; }

        public DbSet<Organizatorius> Organizators { get; set; }
    }
}