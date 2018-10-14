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
                    ImagePath="carconvert.png",
                    UnitPrice = 22.50,
                    CategoryID = 1
               },
                new Event
                {
                    EventID = 2,
                    EventName = "Kitas koncertas",
                    Description = "This is a nice Concert. It is a very nice Concert. Everyone would love this Concert. It's a great great Concert.",
                    ImagePath="carearly.png",
                    UnitPrice = 15.95,
                     CategoryID = 1
               },
                new Event
                {
                    EventID = 3,
                    EventName = "Alternatyvus koncertas",
                    Description = "This is a nice Concert. It is a very nice Concert. Everyone would love this Concert. It's a great great Concert.",
                    ImagePath="carfast.png",
                    UnitPrice = 32.99,
                    CategoryID = 1
                },
                new Event
                {
                    EventID = 4,
                    EventName = "Koncertas Bam bam",
                    Description = "This is a nice Concert. It is a very nice Concert. Everyone would love this Concert. It's a great great Concert.",
                    ImagePath="carfaster.png",
                    UnitPrice = 8.95,
                    CategoryID = 1
                },
                new Event
                {
                    EventID = 5,
                    EventName = "Tylos koncertas",
                    Description = "This is a nice Concert. It is a very nice Concert. Everyone would love this Concert. It's a great great Concert." +
                                  "No friends required.",
                    ImagePath="carracer.png",
                    UnitPrice = 34.95,
                    CategoryID = 1
                },
                new Event
                {
                    EventID = 6,
                    EventName = "Ace Plane",
                    Description = "Authentic airplane toy. Features realistic color and details.",
                    ImagePath="planeace.png",
                    UnitPrice = 95.00,
                    CategoryID = 2
                },
                new Event
                {
                    EventID = 7,
                    EventName = "Glider",
                    Description = "This fun glider is made from real balsa wood. Some assembly required.",
                    ImagePath="planeglider.png",
                    UnitPrice = 4.95,
                    CategoryID = 2
                },
                new Event
                {
                    EventID = 8,
                    EventName = "Paper Plane",
                    Description = "This paper plane is like no other paper plane. Some folding required.",
                    ImagePath="planepaper.png",
                    UnitPrice = 2.95,
                    CategoryID = 2
                },
                new Event
                {
                    EventID = 9,
                    EventName = "Propeller Plane",
                    Description = "Rubber band powered plane features two wheels.",
                    ImagePath="planeprop.png",
                    UnitPrice = 32.95,
                    CategoryID = 2
                },
                new Event
                {
                    EventID = 10,
                    EventName = "Early Truck",
                    Description = "This toy truck has a real gas powered engine. Requires regular tune ups.",
                    ImagePath="truckearly.png",
                    UnitPrice = 15.00,
                    CategoryID = 3
                },
                new Event
                {
                    EventID = 11,
                    EventName = "Fire Truck",
                    Description = "You will have endless fun with this one quarter sized fire truck.",
                    ImagePath="truckfire.png",
                    UnitPrice = 26.00,
                    CategoryID = 3
                },
                new Event
                {
                    EventID = 12,
                    EventName = "Big Truck",
                    Description = "This fun toy truck can be used to tow other trucks that are not as big.",
                    ImagePath="truckbig.png",
                    UnitPrice = 29.00,
                    CategoryID = 3
                },
                new Event
                {
                    EventID = 13,
                    EventName = "Big Ship",
                    Description = "Is it a boat or a ship. Let this floating vehicle decide by using its " +
                                  "artifically intelligent computer brain!",
                    ImagePath="boatbig.png",
                    UnitPrice = 95.00,
                    CategoryID = 4
                },
                new Event
                {
                    EventID = 14,
                    EventName = "Paper Boat",
                    Description = "Floating fun for all! This toy boat can be assembled in seconds. Floats for minutes!" +
                                  "Some folding required.",
                    ImagePath="boatpaper.png",
                    UnitPrice = 4.95,
                    CategoryID = 4
                },
                new Event
                {
                    EventID = 15,
                    EventName = "Sail Boat",
                    Description = "Put this fun toy sail boat in the water and let it go!",
                    ImagePath="boatsail.png",
                    UnitPrice = 42.95,
                    CategoryID = 4
                },
                new Event
                {
                    EventID = 16,
                    EventName = "Rocket",
                    Description = "This fun rocket will travel up to a height of 200 feet.",
                    ImagePath="rocket.png",
                    UnitPrice = 122.95,
                    CategoryID = 5
                }
            };

            return events;
        }
    }
}