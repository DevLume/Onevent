using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Onevent.Models;

namespace Onevent.Models
{
    public class Category
    {
        [ScaffoldColumn(false)]
        public int CategoryID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string CategoryName { get; set; }

        [Display(Name = "Event Description")]
        public string Description { get; set; }

        public virtual ICollection<Event> Products { get; set; }
    }
}