using System;
using Dapper;
using MySql.Data.MySqlClient;
using Models;
using System.Collections.Generic;
using System.Linq;

namespace Repository
{
    public class QuestionRepostory
    {
        private readonly MySqlConnection _conn;
        private string connectionString = "Server=127.0.0.1;Database=kbc;Uid=root;Pwd=root;";


        public QuestionRepostory()
        {
            _conn= new MySqlConnection(connectionString);
        }
        

        public List<Question> GetQuestions()
        {
            try
            {

                var sql = "SELECT * FROM kbc.Question;";
                var result = this._conn.Query<Question>(sql).ToList<Question>();
                return result;

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

    }
}
