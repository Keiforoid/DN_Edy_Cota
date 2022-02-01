using GymManager.Core.MembershipTypes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.ApplicationServices.MembershipTypes
{
    public interface IMembershipTypeAppService
    {
        Task<List<MembershipType>> GetMembershipTypesAsync();

        Task<int> AddMembershipTypeAsync(MembershipType membershipType);

        Task DeleteMembershipTypeAsync(int membershipId);

        Task<MembershipType> GetMembershipTypeAsync(int membershipId);

        Task EditMembershipTypeAsync(MembershipType membershipType);
    }
}
