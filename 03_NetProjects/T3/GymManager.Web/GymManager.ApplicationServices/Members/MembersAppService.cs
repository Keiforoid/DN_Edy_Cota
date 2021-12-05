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
        private static List<Member> Members = new List<Member>();

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
