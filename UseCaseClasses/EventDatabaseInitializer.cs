using System.Collections.Generic;
using System.Data.Entity;

namespace Onevent.Models
{
    public class EventDatabaseInitializer : DropCreateDatabaseIfModelChanges<EventContext>
    {
        private static List<Category> categories;
        private static List<Event> events;

        protected override void Seed(EventContext context)
        {
            SetInitialCategoryList();
            SetInitialEventList();
            GetCategories().ForEach(c => context.Categories.Add(c));
            context.SaveChanges();
            GetEvents().ForEach(p => context.Events.Add(p));
            context.SaveChanges();
            base.Seed(context);
        }

        public static void InsertEvent(Event e)
        {
            //TODO:Make Event insertion
        }

        private static void SetInitialCategoryList()
        {
            categories = new List<Category> {
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
        }

        private void SetInitialEventList()
        {
           events = new List<Event> {
                new Event
                {
                    EventID = 1,
                    EventName = "Pop koncertas",
                    Description = "This is a nice Concert. It is a very nice Concert. Everyone would love this Concert. It's a great great Concert." +
                                  "Power it up and let's go!",
                    Address = "Didlaukio g. 47",
                    OrganizatorEmail = "UserOrg@mail.com",
                    Approved = true,
                    TicketCount = 1000,
                    ImagePath="carconvert.png",
                    UnitPrice = 22.50,
                    CategoryID = 1
               },
              
            };
        }

        public static List<Category> GetCategories()
        {
            return categories;
        }

        public static List<Event> GetEvents()
        {
            return events;
        }
    }
}