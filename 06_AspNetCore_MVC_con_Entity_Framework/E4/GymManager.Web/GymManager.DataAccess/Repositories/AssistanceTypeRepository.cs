using GymManager.Core.Assists;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.DataAccess.Repositories
{
    public class AssistanceTypeRepository: Repositories <int, AssistanceType>
    {
        public AssistanceTypeRepository(GymManagerContext context) : base(context)
        {

        }
    }
}
