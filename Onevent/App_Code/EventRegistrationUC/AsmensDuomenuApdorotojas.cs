using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AsmensDuomenuApdorotojas
/// </summary>
public class AsmensDuomenuApdorotojas
{
    private UserContext userDataContext;
    public AsmensDuomenuApdorotojas()
    {
        userDataContext = new UserContext();      
    }

    public bool CheckIfOrganizatorExists(string orgEmail)
    {
        var x = userDataContext.Organizators.Where(c => c.Email == orgEmail);

        if (x.Count() == 0)
        {
            return false;
        }

        return true;
    }

    public bool CheckIfUserRegistered(string userEmail)
    {
        var x = userDataContext.Users.Where(c => c.Email == userEmail);

        if (x.Count() == 0)
        {
            return false;
        }

        return false;
    }

    public Naudotojas GetUser(string email)
    {
        var user = userDataContext.Users.Where(c => c.Email == email);

        var x = user.ToList();


        return x.ElementAt(0);
    }

}