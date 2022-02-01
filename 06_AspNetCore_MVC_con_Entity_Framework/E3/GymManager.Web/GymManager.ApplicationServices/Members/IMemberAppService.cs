using GymManager.Core.Members;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.ApplicationServices.Members
{
    public interface IMemberAppService
    {
        Task <List<Member>> GetMembersAsync();
        Task<List<Member>> GetMembersAsync(string filteredParameter);

        Task<int> AddMemberAsync(Member member);

        Task DeleteMemberAsync(int memberId);

        Task<Member> GetMemberAsync(int memberId);

        Task EditMemberAsync(Member member);
    }
}
