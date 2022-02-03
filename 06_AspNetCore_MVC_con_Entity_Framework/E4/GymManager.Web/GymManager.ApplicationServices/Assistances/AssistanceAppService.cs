using GymManager.Core.Assists;
using GymManager.DataAccess.Repositories;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.ApplicationServices.Assistances
{
    public class AssistanceAppService : IAssistanceAppService
    {
        private readonly IRepository<int, Assistance> _repository;

        public AssistanceAppService(IRepository<int, Assistance> repository)
        {
            _repository = repository;
        }

        public async Task<int> AddAssistanceAsync(Assistance assistance)
        {
            await _repository.AddAsync(assistance);

            return assistance.Id;
        }

        public async Task DeleteAssistanceAsync(int assistanceId)
        {
            await _repository.DeleteAsync(assistanceId);
        }

        public async Task EditAssistanceAsync(Assistance assistance)
        {
            await _repository.UpdateAsync(assistance);
        }

        public async Task<Assistance> GetAssistanceAsync(int assistanceId)
        {
            return await _repository.GetAsync(assistanceId);
        }

        public async Task<List<Assistance>> GetAssistancesAsync()
        {
            return await _repository.GetAll().ToListAsync();
        }
    }
}
