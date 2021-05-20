using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace prueba.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PingController : ControllerBase
    {
        public PingController()
        {

        }

        [HttpGet]
        public string[] Get(int count)
        {
            string[] myvector = new string[count];

            for (int i = 0; i < count; i++)
            {
                var b = i + 1;
                if (b % 3 == 0 && b%5 == 0)
                    myvector[i] = "ping pong";
                else
                if (b % 3 == 0)
                    myvector[i] = "ping";
                else if (b % 5 == 0)
                    myvector[i] = "pong";
                else
                    myvector[i] = i.ToString();
            }

            return myvector;

        }
    }
}
