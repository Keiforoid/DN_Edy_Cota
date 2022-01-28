using DataAccess.Exercise;
using DataAccess.Exercise.Entities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApi.Exercise.ParamModels;

namespace WebApi.Exercise.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProceduresController : ControllerBase
    {

        Procedures procedures;
        public ProceduresController()
        {
            procedures = new Procedures();
        }

        [HttpPost(nameof(CreateSale))]
        public void CreateSale([FromBody] CreateSale createSale)
        {
            procedures.CreateSale(createSale.IdUser, createSale.IdInventory, createSale.Cuantity);
        }

        [HttpGet(nameof(GetProductsByType))]
        public IEnumerable<ProductType> GetProductsByType([FromBody] ProductTypeId productType)
        {
            return procedures.GetProductsInProductTypes(productType.Id);
        }

        [HttpGet(nameof(LastWeekRegisteredMembers))]
        public IEnumerable<LastWeekMembers> LastWeekRegisteredMembers()
        {
            return procedures.LastWeekRegisteredMembers();
        }
    }
}
