using GymManager.Core.Members;
using GymManager.DataAccess.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace GymManager.ApplicationServices.Members
{
    public class MembersAppService : IMemberAppService
    {
        private readonly IRepository<int, Member> _repository;

        public MembersAppService(IRepository<int,Member> repository)
        {
            _repository = repository;
        }

        public virtual async Task<int> AddMemberAsync(Member member)
        {
            await _repository.AddAsync(member);

            return member.Id;
        }

        public virtual async Task DeleteMemberAsync(int memberId)
        {
            await _repository.DeleteAsync(memberId);
        }

        public virtual async Task EditMemberAsync(Member member)
        {
            await _repository.UpdateAsync(member);
        }

        public virtual async Task<Member> GetMemberAsync(int memberId)
        {
            return await _repository.GetAsync(memberId);
        }

        public async Task<List<Member>> GetMembersAsync()
        {
            return await _repository.GetAll().ToListAsync();
        }

        public async Task<List<Member>> GetMembersAsync(string filterParameter)
        {
            return await _repository.GetAll().Where(x=> x.Name.Contains(filterParameter)).ToListAsync();
        }
    }
}
