using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using prueba.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace prueba.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PersonaController : ControllerBase
    {
        private readonly MyContext _context;
        public PersonaController(MyContext context)
        {
            _context = context;

        }


        [HttpPost]
        public ActionResult<Persona> Add(Persona persona)
        {
            _context.Add(persona);
             _context.SaveChanges();
            return persona;

        }

        [HttpGet]
        public ActionResult<IEnumerable<Persona>> Listar()
        {
            return _context.personas.ToList();
        }

        [HttpPut]
        public ActionResult<Persona> Actualizar(Persona persona)
        {
            _context.Update(persona);
            _context.SaveChanges();
            return persona;
        }

        [HttpDelete("{id}")]
        public ActionResult<Persona>Delete(int id)
        {
            var persona = _context.personas.Find(id);
            if(persona is null)
            {
                return NotFound();
            }
            _context.personas.Remove(persona);
            _context.SaveChanges();
            return persona;
        }

        [HttpGet("{id}")]
        public ActionResult<Persona> BuscarId(int id)
        {
            var persona = _context.personas.Find(id);
            if (persona is null)
            {
                return NotFound();
            }
            return persona;
        }



    }
}
