using System.Data.Entity;
namespace Onevent.Models
{
    public class EventContext : DbContext
    {
        public EventContext() : base("Onevent")
        {
        }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Event> Events { get; set; }
    }
}