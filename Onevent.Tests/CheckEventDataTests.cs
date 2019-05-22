using NUnit.Framework;
using Onevent.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Onevent.Tests
{
    [TestFixture]
    class CheckEventDataTests
    {
        [TestCase]
        public void CheckEventData_ShouldReturnTrue()
        {
            RenginiuTvarkytojas rt = new RenginiuTvarkytojas();

            Event e = new Event
            {
                EventID = 1,
                EventName = "abcEvent",
                TicketCount = 100,
                Address = "Didlaukio g. 47",
                OrganizatorEmail = "UserOrg@mail.com",
                Category = new Category
                {CategoryID=1,
                CategoryName="Koncertas"},
            };

            Assert.AreEqual(true, rt.CheckEventData(e).Item1);
        }

        [TestCase]
        public void CheckEventData_ShouldReturnFalse()
        {
            RenginiuTvarkytojas rt = new RenginiuTvarkytojas();

            Event e = new Event
            {
                EventID = 1,
                EventName = "abcEvent",
                TicketCount = 100,
                Address = "Didlaukio g. 47",
                OrganizatorEmail = "UserOrg@mail.com",
                
            };

            Assert.AreEqual(false, rt.CheckEventData(e).Item1);
        }
    }
}
