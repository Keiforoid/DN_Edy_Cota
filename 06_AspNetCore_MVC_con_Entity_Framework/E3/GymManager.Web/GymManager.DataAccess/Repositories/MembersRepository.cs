﻿using GymManager.Core.Members;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.DataAccess.Repositories
{
    public class MembersRepository : Repositories<int, Member>
    {
        public MembersRepository(GymManagerContext context) : base(context)
        {

        }

        public override async Task<Member> AddAsync(Member entity)
        {
            var city = await Context.City.FindAsync(entity.City.Id);
            var membershipType = await Context.City.FindAsync(entity.MembershipType.Id);
            entity.City = null;
            await Context.Members.AddAsync(entity);
            city.Members.Add(entity);
            membershipType.Members.Add(entity);

            await Context.SaveChangesAsync();

            return entity;
        }

        public override async Task<Member> GetAsync(int id)
        {
            var member = await Context.Members.Include(x => x.City).FirstOrDefaultAsync(x => x.Id == id);
            return member;
        }
    }
}
