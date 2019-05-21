using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Naudotojas
/// </summary>
public class Naudotojas
{
    public int UserID { get; set; }
    [Required, StringLength(100), Display(Name = "Username")]
    public string Username { get; set; }
    [Required, StringLength(256), Display(Name = "Email")]
    public string Email { get; set; }
}