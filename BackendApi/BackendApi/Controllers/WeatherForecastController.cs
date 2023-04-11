using Microsoft.AspNetCore.Mvc;

namespace BackendApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {
        private static List<string> Summaries = new()
        {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

        private readonly ILogger<WeatherForecastController> _logger;

        public WeatherForecastController(ILogger<WeatherForecastController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public List<string> Get()
        {
            return Summaries;
        }

        [HttpPost]
        public IActionResult Add(string name)
        {
            int n = Summaries.Count;
            for (int i = 0; i < n; i++)
            {
                if (Summaries[i] == name)
                    return BadRequest("Фигню написал, такое имя уже есть!");
            }

            Summaries.Add(name);
            return Ok();
        }

        [HttpPut]
        public IActionResult Update(int index, string name)
        {
            if (index < 0 || index >= Summaries.Count)
            {
                return BadRequest("Фигню написал, индекс неверный!");
            }

            Summaries[index] = name;
            return Ok();
        }

        [HttpDelete]
        public IActionResult Delete(int index)
        {
            if (index < 0 || index >= Summaries.Count)
            {
                return BadRequest("Фигню написал, индекс неверный!");
            }

            Summaries.RemoveAt(index);
            return Ok();
        }

        [HttpGet("{index}")]
        public string GetByIndex(int index)
        {
            if (index < 0 || index >= Summaries.Count)
            {
                return "Фигню написал, индекс неверный!";
            }

            string name;
            name = Summaries[index];
            return name;
        }

        [HttpGet("find-by-name")]
        public int GetByName(string name)
        {
            int count = 0;
            int n = Summaries.Count;

            for (int i = 0; i < n; i++)
            {
                if (Summaries[i] == name)
                    count++;
            }

            return count;
        }

        [HttpGet("All")]
        public IActionResult GetAll(int? sortStratege)
        {
            int n = Summaries.Count;
            string[] qq = new string[n];
            string ww = "";
            if (sortStratege == null)
            return Ok(Summaries);
            if (sortStratege == -1)
            {
                for (int i = 0; i < n; i++)
                {
                    qq[i] = Summaries[i];
                }

                Array.Sort(qq);
                Array.Reverse(qq);

                    for (int i = 0; i < n; i++)
                    {
                        ww += qq[i] + "," + "\n";
                    }
                return Ok(ww);
            }

            if (sortStratege == 1)
            {
                for (int i = 0; i < n; i++)
                {
                    qq[i] = Summaries[i];
                }

                Array.Sort(qq);
                for (int i = 0; i < n; i++)
                {
                    ww += qq[i] + "," + "\n";
                }
                return Ok(ww);
            }

            return BadRequest("Некорректное значение параметра sortStratege");
        }
    }
}