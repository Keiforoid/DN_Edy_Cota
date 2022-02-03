using GymManager.Core.MembershipTypes;
using GymManager.DataAccess.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace GymManager.ApplicationServices.MembershipTypes
{
    public class MembershipTypeAppService : IMembershipTypeAppService
    {
        private readonly IRepository<int, MembershipType> _repository;

        public MembershipTypeAppService(IRepository<int, MembershipType> repository)
        {
            _repository = repository;
        }

        public virtual async Task<int> AddMembershipTypeAsync(MembershipType membershipType)
        {
            await _repository.AddAsync(membershipType);

            return membershipType.Id;
        }

        public virtual async Task DeleteMembershipTypeAsync(int membershipTypeId)
        {
            await _repository.DeleteAsync(membershipTypeId);
        }

        public virtual async Task EditMembershipTypeAsync(MembershipType membershipType)
        {
            await _repository.UpdateAsync(membershipType);
        }

        public virtual async Task<MembershipType> GetMembershipTypeAsync(int membershipTypeId)
        {
            return await _repository.GetAsync(membershipTypeId);
        }

        public async Task<List<MembershipType>> GetMembershipTypesAsync()
        {
            return await _repository.GetAll().ToListAsync();
        }
    }
}
