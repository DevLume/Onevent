using Onevent.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RenginiuTvarkytojas
/// </summary>
public class RenginiuTvarkytojas
{
    public List<Event> EventList;

    public RenginiuTvarkytojas()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    
    public bool AddEvent(Event e)
    {
        //for demo purposes all events will always be approved
        e.Approved = true;
        return false;
    }

    public bool RemoveEvent(int eventID)
    {
        return false;
    }

    public Tuple<bool, string> CheckEventData(Event eventToCheck)
    {
        bool resultState = false; // true if all good, false if all bad
        string resultMessage = "Unknown error has occured";

        if (eventToCheck.Address == string.Empty)
        {
            resultState = false;
            resultMessage = "No address given!";
        }
        else if (eventToCheck.Category == null)
        {
            resultState = false;
            resultMessage = "Please select a category for your event";
        }
        else if (eventToCheck.EventName == string.Empty)
        {
            resultState = false;
            resultMessage = "No Event name was given";
        }

        AsmensDuomenuApdorotojas ada = new AsmensDuomenuApdorotojas();
        resultState = ada.CheckIfOrganizatorExists(eventToCheck.OrganizatorEmail);

        if (resultState == false)
        {
            resultMessage = "Such organizator does not exist";
        }
        else
        {
            resultMessage = "Event data check was succesful";
        }

        return new Tuple<bool, string>(resultState, resultMessage);
    }

    public bool UpdateEvent(int eventId, Event newEvent)
    {
        return false;
    }

    public List<Event> GetUnconfirmedEvents()
    {
        List<Event> temp = EventDatabaseInitializer.GetEvents();

        IEnumerable<Event> x = from ev in temp where ev.Approved == false select ev; 

        return (List<Event>)x;
    }

    public List<Event> GetEvents()
    {
        List<Event> temp = EventDatabaseInitializer.GetEvents();

        IEnumerable<Event> x = from ev in temp select ev;

        return (List<Event>)x;
    }
}