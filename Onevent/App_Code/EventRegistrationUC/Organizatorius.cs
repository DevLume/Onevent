using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Organizatorius
/// </summary>
public class Organizatorius
{
    [Required, StringLength(256), Display(Name = "Email")]
    public string Email { get; set; }
    [Key]
    public int OrganizatorID { get; set; }
}