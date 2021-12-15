﻿using GymManager.Core.Members;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.ApplicationServices.Members
{
    public class MembersAppService : IMemberAppService
    {
        private static List<Member> Members = new List<Member>();

        public void DeleteMember(int memberId)
        {
            var m = Members.Where(x => x.Id == memberId).FirstOrDefault();

            Members.Remove(m);
        }

        public void EditMember(Member member)
        {
            var m = Members.Where(x => x.Id == member.Id).FirstOrDefault();

            m.AllowNewsLetter = member.AllowNewsLetter;
            m.BirthDay = member.BirthDay;
            m.CityId = member.CityId;
            m.Email = member.Email;
            m.LastName = member.LastName;
            m.Name = member.Name;
        }

        public Member GetMember(int memberId)
        {
            var m = Members.Where(x => x.Id == memberId).FirstOrDefault();

            return m;
        }

        int IMemberAppService.AddMember(Member member)
        {
            member.Id = new Random().Next();
            Members.Add(member);

            return member.Id;
        }

        List<Member> IMemberAppService.GetMembers()
        {
            return Members;
        }
    }
}
