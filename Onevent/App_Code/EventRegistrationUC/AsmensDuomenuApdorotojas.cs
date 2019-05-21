using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AsmensDuomenuApdorotojas
/// </summary>
public class AsmensDuomenuApdorotojas
{
    public AsmensDuomenuApdorotojas()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool CheckIfOrganizatorExists(string orgEmail)
    {
        var x = UserDatabaseInitializer.GetOrganizators().Where(c => c.Email == orgEmail);

        if (x.Count() == 0)
        {
            return false;
        }

        return true;
    }

    public bool CheckIfUserRegistered(string userEmail)
    {
        var x = UserDatabaseInitializer.GetUsers().Where(c => c.Email == userEmail);

        if (x.Count() == 0)
        {
            return false;
        }

        return false;
    }
}