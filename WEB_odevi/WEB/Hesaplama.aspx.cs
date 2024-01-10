using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WEB_odevi
   
{
    public partial class Hesaplama : System.Web.UI.Page
    {
        // SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-AOF8AVE\SQLEXPRESS;Initial Catalog=TavsiyelerDb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Sayfa ilk kez yüklendiğinde DropDownList'i doldur
                FillDropDownList();
            }

        }
        private void FillDropDownList()
        {
            // DropDownList'e örnek seçenekleri ekleyin
            ddlGender.Items.Add(new ListItem("Erkek", "erkek"));
            ddlGender.Items.Add(new ListItem("Kadın", "kadın"));
        }
        protected void btnHesapla_Click(object sender, EventArgs e)
        {
            string name = ((TextBox)FindControl("name")).Text;
            string surname = ((TextBox)FindControl("surname")).Text;
            string gender = ddlGender.SelectedValue;
            int weight = int.Parse(((TextBox)FindControl("weight")).Text);
            int height = int.Parse(((TextBox)FindControl("height")).Text);
     

            // BMI hesapla
            double heightInMeters = height / 100.0;
            double bmi = weight / (heightInMeters * heightInMeters);

            // BMI'ye göre sonuçları belirle
            string resultMessage = "";
            if (bmi < 18.5)
            {
                resultMessage = "Boyunuza göre uygun ağırlıkta olmadığını, zayıf olduğunu gösterir. Zayıflık, bazı hastalıklar için risk oluşturan ve istenmeyen bir durumdur. Boyuna uygun ağırlığa erişmeniz için yeterli ve dengeli beslenmeli, beslenme alışkanlıklarınızı geliştirmeye özen göstermelisin.";
            }
            else if (bmi < 24.9)
            {
                resultMessage = "Boyuna göre uygun ağırlıkta olduğunu gösterir. Yeterli ve dengeli beslenerek ve düzenli fiziksel aktivite yaparak bu ağırlığınızı korumaya özen göstermen yeterlidir.";
            }
            else if (bmi < 29.9)
            {
                resultMessage = "Boyuna göre vücut ağırlığının fazla olduğunu gösterir. Fazla kilolu olma durumu gerekli önlemler alınmadığı takdirde pek çok hastalık için risk faktörü olan obeziteye (şişmanlık) yol açar.";
            }
            else if (bmi < 34.9)
            {
                resultMessage = "(Şişman - Obez 1.Sınıf) Boyuna göre vücut ağırlığının fazla olduğunu bir başka deyişle şişman olduğunun bir göstergesidir. Şişmanlık, kalp-damar hastalıkları, diyabet, hipertansiyon v.b. kronik hastalıklar için risk faktörüdür. Bir sağlık kuruluşuna başvurarak hekim / diyetisyen kontrolünde zayıflayarak normal ağırlığa inmen sağlığın açısından çok önemlidir. Lütfen, sağlık kuruluşuna başvur.";
            }
            else if (bmi < 39.9)
            {
                resultMessage = "(Şişman - Obez 2.Sınıf) Boyuna göre vücut ağırlığının fazla olduğunu bir başka deyişle şişman olduğunun bir göstergesidir. Şişmanlık, kalp-damar hastalıkları, diyabet, hipertansiyon v.b. kronik hastalıklar için risk faktörüdür. Bir sağlık kuruluşuna başvurarak hekim / diyetisyen kontrolünde zayıflayarak normal ağırlığa inmen sağlığın açısından çok önemlidir. Lütfen, sağlık kuruluşuna başvur.";
            }
            else
            {
                resultMessage = "(Şişman - Obez 3.Sınıf) Boyuna göre vücut ağırlığının fazla olduğunu bir başka deyişle şişman olduğunun bir göstergesidir. Şişmanlık, kalp-damar hastalıkları, diyabet, hipertansiyon v.b. kronik hastalıklar için risk faktörüdür. Bir sağlık kuruluşuna başvurarak hekim / diyetisyen kontrolünde zayıflayarak normal ağırlığa inmen sağlığın açısından çok önemlidir. Lütfen, sağlık kuruluşuna başvur.";
            }

            // Veritabanına bağlanma bilgileri (gerçek bilgilerinizi kullanın)
            string connectionString = @"Data Source=DESKTOP-AOF8AVE\SQLEXPRESS;Initial Catalog=TavsiyelerDb;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Veriyi eklemek için SQL komutu
                string sql = $"INSERT INTO KisiBilgileri (isim, soyisim, cinsiyet, kilo, boy, sonuc, sonucMesaji) " +
                             $"VALUES ('{name}', '{surname}', '{gender}', {weight}, {height}, {bmi.ToString(CultureInfo.InvariantCulture)}, '{resultMessage}')";

                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Veri başarıyla eklendi
                        result.InnerHtml = "Kişi başarıyla kaydedildi. Merhabalar " + name + " Vücut kitle indeksin " + bmi.ToString("0.00") + "<br/>" + resultMessage;
                    }
                    else
                    {
                        // Veri eklenirken bir hata oluştu
                        result.InnerHtml ="Veri eklenirken bir hata oluştu.";
                    }
                }
            }
        }
    }
}