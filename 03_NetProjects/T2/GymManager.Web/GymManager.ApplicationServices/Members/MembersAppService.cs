using GymManager.Core.Members;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.ApplicationServices.Members
{
    public class MembersAppService : IMemberAppService
    {
        List<Member> IMemberAppService.GetMembers()
        {
            List<Member> members = new List<Member>();

            // 1
            members.Add(new Member
            {
                Name = "Israel",
                LastName = "Pérez",
                BirthDay = new DateTime(1986, 6, 24),
                AllowNewsLetter = true,
                CityId = 1,
                Email = "isra@prueba.com"
            });
            // 2
            members.Add(new Member
            {
                Name = "Edgar",
                LastName = "García",
                BirthDay = new DateTime(2000, 10, 11),
                AllowNewsLetter = false,
                CityId = 1,
                Email = "edgar@prueba.com"
            });
            // 3
            members.Add(new Member
            {
                Name = "Jaime",
                LastName = "Castillo",
                BirthDay = new DateTime(1981, 9, 21),
                AllowNewsLetter = true,
                CityId = 1,
                Email = "jaime@prueba.com"
            });
            members.Add(new Member
            {
                Name = "Juan",
                LastName = "López",
                BirthDay = new DateTime(1966, 9, 4),
                AllowNewsLetter = true,
                CityId = 1,
                Email = "juan@prueba.com"
            });
            members.Add(new Member
            {
                Name = "Elon",
                LastName = "Musk",
                BirthDay = new DateTime(2000, 12, 2),
                AllowNewsLetter = true,
                CityId = 1,
                Email = "isra@prueba.com"
            });
            members.Add(new Member
            {
                Name = "Bart",
                LastName = "Simpson",
                BirthDay = new DateTime(1982, 4, 20),
                AllowNewsLetter = true,
                CityId = 3,
                Email = "bart@prueba.com"
            });
            members.Add(new Member
            {
                Name = "Homero",
                LastName = "Simpson",
                BirthDay = new DateTime(1966, 2, 22),
                AllowNewsLetter = true,
                CityId = 3,
                Email = "homer@prueba.com"
            });
            members.Add(new Member
            {
                Name = "Rick",
                LastName = "Sanchez",
                BirthDay = new DateTime(1960, 2, 10),
                AllowNewsLetter = true,
                CityId = 6,
                Email = "rick@prueba.com"
            });
            members.Add(new Member
            {
                Name = "Summer",
                LastName = "Smith",
                BirthDay = new DateTime(2003, 1, 3),
                AllowNewsLetter = true,
                CityId = 6,
                Email = "isra@prueba.com"
            });
            members.Add(new Member
            {
                Name = "Morty",
                LastName = "Smith",
                BirthDay = new DateTime(2008, 5, 11),
                AllowNewsLetter = true,
                CityId = 6,
                Email = "morty@prueba.com"
            });

            return members;
        }
    }
}
