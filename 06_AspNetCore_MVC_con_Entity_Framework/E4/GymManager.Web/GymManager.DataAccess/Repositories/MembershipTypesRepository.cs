using GymManager.Core.MembershipTypes;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.DataAccess.Repositories
{
    public class MembershipTypesRepository : Repositories<int, MembershipType>
    {
        public MembershipTypesRepository(GymManagerContext context) : base(context)
        {

        }
    }
}
