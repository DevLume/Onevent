using System.Collections.Generic;
using System.Data.Entity;

namespace Onevent.Models
{
    public class EventDatabaseInitializer : DropCreateDatabaseIfModelChanges<EventContext>
    {
        protected override void Seed(EventContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            context.SaveChanges();
            GetEvents().ForEach(p => context.Events.Add(p));
            context.SaveChanges();
            base.Seed(context);
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category> {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Koncertas"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Festivslis"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Teatras"
                },
                new Category
                {
                    CategoryID = 4,
                    CategoryName = "Paroda"
                },
                new Category
                {
                    CategoryID = 5,
                    CategoryName = "Aktyvi veikla"
                },
            };

            return categories;
        }

        private static List<Event> GetEvents()
        {
            var events = new List<Event> {
                new Event
                {
                    EventID = 1,
                    EventName = "Pop koncertas",
                    Description = "This is a nice Concert. It is a very nice Concert. Everyone would love this Concert. It's a great great Concert." +
                                  "Power it up and let's go!",
                    Address = "Didlaukio g. 47",
                    OrganizatorEmail = "org@mail.com",
                    Approved = true,
                    TicketCount = 1000,
                    ImagePath="carconvert.png",
                    UnitPrice = 22.50,
                    CategoryID = 1
               },
                new Event
                {
                    EventID = 2,
                    EventName = "Paroda",
                    Description = "super paroda",
                    Address = "Parko g. 25",
                    OrganizatorEmail = "paroduOrg@mail.com",
                    Approved = true,
                    TicketCount = 0,
                    ImagePath="carconvert.png",
                    UnitPrice = 22.50,
                    CategoryID = 4
               },

            };

            return events;
        }
    }
}