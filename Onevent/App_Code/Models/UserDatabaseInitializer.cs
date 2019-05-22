using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserDatabaseInitializer
/// </summary>
public class UserDatabaseInitializer : DropCreateDatabaseIfModelChanges<UserContext>
{
    private static List<Naudotojas> Users;
    private static List<Organizatorius> Organizators;
    protected override void Seed(UserContext context)
    {
        GetUsers().ForEach(c => context.Users.Add(c));
        context.SaveChanges();
        GetOrganizators().ForEach(c => context.Organizators.Add(c));
        context.SaveChanges();
        base.Seed(context);
    }

  

    public static List<Naudotojas> GetUsers()
    {
      /*  var Users = new List<Naudotojas>
        {
            new Naudotojas
            {
                UserID = 1,
                Username = "Karolis",
                Email = "TestEmail@mail.com"
            }
        };
        */
        return Users;
    }

    public static List<Organizatorius> GetOrganizators()
    {
        /*var Organizators = new List<Organizatorius>
        {
            new Organizatorius
            {
                OrganizatorID = 1,
                Email = "TestEmail@mail.com"
            }
        };*/

        return Organizators;
    }
}