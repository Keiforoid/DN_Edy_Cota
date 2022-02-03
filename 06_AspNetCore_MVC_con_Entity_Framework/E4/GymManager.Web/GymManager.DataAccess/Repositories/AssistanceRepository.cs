using GymManager.Core.Assists;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.DataAccess.Repositories
{
    public class AssistanceRepository : Repositories<int, Assistance>
    {
        public AssistanceRepository(GymManagerContext context) : base(context)
        {

        }

        public override async Task<Assistance> AddAsync(Assistance entity)
        {
            var assistanceType = await Context.AssitanceTypes.FindAsync(entity.AssitanceType.Id);
            var member = await Context.Members.FindAsync(entity.Member.Id);

            entity.AssitanceType = assistanceType;
            entity.Member = member;

            await Context.Assists.AddAsync(entity);
            await Context.SaveChangesAsync();

            return entity;
        }

        public override async Task<Assistance> GetAsync(int id)
        {
            var assistance = await Context.Assists
                .Include(x => x.AssitanceType)
                .Include(x => x.Member)
                .FirstOrDefaultAsync(x => x.Id == id);
           
            return assistance;
        }

        public override IQueryable<Assistance> GetAll()
        {
            var assistance = Context.Assists
                .Include(x => x.AssitanceType)
                .Include(x => x.Member);
            return assistance;
        }
    }
}
