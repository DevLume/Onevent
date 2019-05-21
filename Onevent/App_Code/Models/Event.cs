using System.ComponentModel.DataAnnotations;
using Onevent.Models;

namespace Onevent.Models
{
    public class Event
    {       
        [ScaffoldColumn(false)]
        public int EventID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string EventName { get; set; }

        [Required, StringLength(10000), Display(Name = "Event Description"), DataType(DataType.MultilineText)]
        public string Description { get; set; }

        [Required, StringLength(10000), Display(Name = "Event Address"), DataType(DataType.MultilineText)]
        public string Address { get; set; }

        [Required, StringLength(256), Display(Name = "Event Organizator"), DataType(DataType.EmailAddress)]
        public string OrganizatorEmail { get; set; }

        public bool Approved { get; set; }

        public string ImagePath { get; set; }

        [Display(Name = "Price")]
        public double? UnitPrice { get; set; }

        public int? CategoryID { get; set; }

        public int? TicketCount { get; set; }

        public virtual Category Category { get; set; }
    }
}