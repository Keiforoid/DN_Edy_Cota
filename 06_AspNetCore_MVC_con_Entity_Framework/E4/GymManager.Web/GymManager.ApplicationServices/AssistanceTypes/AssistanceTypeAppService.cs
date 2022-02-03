using GymManager.Core.Assists;
using GymManager.DataAccess.Repositories;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.ApplicationServices.AssistanceTypes
{
    public class AssistanceTypeAppService : IAssistanceTypeAppService
    {
        private readonly IRepository<int, AssistanceType> _repository;

        public AssistanceTypeAppService(IRepository<int, AssistanceType> repository)
        {
            _repository = repository;
        }

        public async Task<int> AddAssistanceAsync(AssistanceType assistanceType)
        {
            await _repository.AddAsync(assistanceType);

            return assistanceType.Id;
        }

        public async Task DeleteAssistanceAsync(int assistanceTypeId)
        {
            await _repository.DeleteAsync(assistanceTypeId);
        }

        public async Task EditAssistanceAsync(AssistanceType assistanceType)
        {
            await _repository.UpdateAsync(assistanceType);
        }

        public async Task<AssistanceType> GetAssistanceAsync(int assistanceTypeId)
        {
            return await _repository.GetAsync(assistanceTypeId);
        }

        public async Task<List<AssistanceType>> GetAssistancesAsync()
        {
            return await _repository.GetAll().ToListAsync();
        }
    }
}
