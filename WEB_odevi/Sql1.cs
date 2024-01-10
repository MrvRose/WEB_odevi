using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WEB_odevi
{
    public class Sql1
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-AOF8AVE/SQLEXPRESS;Initial Catalog=TavsiyelerDb;Integrated Security=True"); 
            baglan.Open();
            return baglan;  
        }
    }
}