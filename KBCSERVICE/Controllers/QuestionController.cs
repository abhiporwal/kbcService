using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Models;
using Repository;

namespace KBCSERVICE.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class QuestionController : ControllerBase
    {
        [HttpGet]
        public List<Question> Get()
        {

            QuestionRepostory _QuestionRepostory = new QuestionRepostory();


            List<Question> question = _QuestionRepostory.GetQuestions();
            return question;
        }

    }
}
