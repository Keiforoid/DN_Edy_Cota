using GymManager.Core.Members;
using GymManager.Core.MembershipTypes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.ApplicationServices.MembershipTypes
{
    public class MembershipTypeAppService : IMembershipTypeAppService
    {
        private static List<Member> Members = new List<Member>();

        private static List<MembershipType> membershipTypes = new List<MembershipType>();

        public List<MembershipType> GetMembershipTypes()
        {
            return membershipTypes;
        }

        public MembershipType GetMembershipType(int membershipTypeId)
        {
            var m = membershipTypes.Where(x => x.Id == membershipTypeId).FirstOrDefault();

            return m;
        }

        public int AddMembershipType(MembershipType membershipType)
        {
            membershipType.Id = new Random().Next();
            membershipType.CreatedOn = DateTime.Now;
            membershipTypes.Add(membershipType);

            return membershipType.Id;
        }

        public void EditMembershipType(MembershipType membershipType)
        {
            var m = membershipTypes.Where(x => x.Id == membershipType.Id).FirstOrDefault();

            m.Name = membershipType.Name;
            m.Cost = membershipType.Cost;
            m.CreatedOn = membershipType.CreatedOn;
            m.Duration = membershipType.Duration;
        }

        public void DeleteMembershipType(int membershipTypeId)
        {
            var m = membershipTypes.Where(x => x.Id == membershipTypeId).FirstOrDefault();

            membershipTypes.Remove(m);
        }
    }
}
