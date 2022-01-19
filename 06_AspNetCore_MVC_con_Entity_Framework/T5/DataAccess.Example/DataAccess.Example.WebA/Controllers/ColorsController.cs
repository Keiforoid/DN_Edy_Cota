﻿using DataAccess.Example.Core;
using DataAccess.Example.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace DataAccess.Example.WebA.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ColorsController : ControllerBase
    {
        private readonly IColorsDataManager _manager;

        public ColorsController(IColorsDataManager manager)
        {
            _manager = manager;
        }

        // GET: api/<ColorsController>
        [HttpGet]
        public IEnumerable<Color> Get()
        {
            return _manager.GetAll();
        }

        // GET api/<ColorsController>/5
        [HttpGet("{id}")]
        public Color Get(int id)
        {
            return _manager.Get(id);
        }

        // POST api/<ColorsController>
        [HttpPost]
        public void Post([FromBody] Color value)
        {
            _manager.Insert(value);

        }

        // PUT api/<ColorsController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] Color value)
        {
            value.Id = id;
            _manager.update(value);
        }

        // DELETE api/<ColorsController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            _manager.Delete(id);
        }
    }
}
