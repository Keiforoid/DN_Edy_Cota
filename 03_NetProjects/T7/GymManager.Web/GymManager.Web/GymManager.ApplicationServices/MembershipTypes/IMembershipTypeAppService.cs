﻿using GymManager.Core.Members;
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
        List<MembershipType> GetMembershipTypes();

        int AddMembershipType(MembershipType membershipType);

        void DeleteMembershipType(int membershipTypeId);

        MembershipType GetMembershipType(int membershipTypeId);

        void EditMembershipType(MembershipType membershipType);
    }
}
