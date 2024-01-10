using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WEB_odevi
{
    public partial class Tavsiyeler : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-AOF8AVE\SQLEXPRESS;Initial Catalog=TavsiyelerDb;Integrated Security=True");
        SqlConnection baglanti2 = new SqlConnection(@"Data Source=DESKTOP-AOF8AVE\SQLEXPRESS;Initial Catalog=TavsiyelerDb;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                VerileriCek();
                VerileriCek2();
            }
        }

        private void VerileriCek()
        {
            try
            {
                if (baglanti.State == ConnectionState.Closed)
                    baglanti.Open();

                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Besin", baglanti);
                SqlDataAdapter adap = new SqlDataAdapter(komut);
                DataTable dt = new DataTable();
                adap.Fill(dt);

                Tekrarlayici.DataSource = dt;
                Tekrarlayici.DataBind();
            }
            catch (Exception ex)
            {
                // Hata durumunda yapılacak işlemler
                Response.Write("Hata: " + ex.ToString());
            }
            finally
            {
                if (baglanti.State == ConnectionState.Open)
                    baglanti.Close();
            }
        }
        protected string GetResimYolu(object resimAdi)
        {
            string klasorYolu = "./images/";
            return $"{klasorYolu}{resimAdi}";
        }
        private void VerileriCek2()
        {
            try
            {
                if (baglanti2.State == ConnectionState.Closed)
                    baglanti2.Open();

                SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Besin2", baglanti2);
                SqlDataAdapter adap2 = new SqlDataAdapter(komut2);
                DataTable dt2 = new DataTable();
                adap2.Fill(dt2);

                Tekrarlayici2.DataSource = dt2;
                Tekrarlayici2.DataBind();
            }
            catch (Exception ex)
            {
                // Hata durumunda yapılacak işlemler
                Response.Write("Hata: " + ex.ToString());
            }
            finally
            {
                if (baglanti2.State == ConnectionState.Open)
                    baglanti2.Close();
            }
        }
        
    }
}