<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="WEB_odevi.AnaSayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Vücut Kitle İndeksi Hesaplama</title>
    <link href="AnaSayfaCss.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    </form>
     <!--navbar-->
    <header class="header">
        <div class="baslik">
            <h1>Vücut Kitle Hesaplama Sitesi</h1>
        </div>
        <nav class="navbar">
            <a href="AnaSayfa.aspx" >Anasayfa</a>
            <a href="Hesaplama.aspx" >Vücut Kitle İndeksi Hesapla</a>
            <a href="Tavsiyeler.aspx">Tarifler</a>
            <label class="mode">
                <input id="mode-btn" type="checkbox">
                <span>Dark</span>
                <span>Light</span>
            </label>
        </nav>
    </header>
    <section id="home">
        <div id="anayazi">
            <h3>Vücut Kitle İndeksi (VKİ) Nedir?<br><br></h3>
               Vücut kitle indeksi (VKİ) ya da boy kilo indeksi; bir kişinin vücudundaki tahmini yağ oranını gösteren bir hesaplama yöntemidir. Bu yöntemde kişinin boy kilo oranı esas alınır. İndeksin verdiği sonuca göre kişinin mevcut kilosunun, ideal kilosuna yakınlığı ve uzaklığı hesaplanabilir.<br>
                
               <br>
               <h3>Vücut Kitle İndeksi Nasıl Hesaplanır?<br>
               </h3>
                
               Vücut kitle indeksi, vücut ağırlığının boy uzunluğunun karesine bölünmesiyle (kg/m²) hesaplanır.
               <br><br>
                
               
               18, 5 kg/m² ‘nin altındaki sonuçlar: İdeal kilonun altında<br>
               18, 5 kg/m² ile 24, 9 kg/m² arasındaki sonuçlar: İdeal kiloda<br>
               25 kg/m² ile 29, 9 kg/m² arasındaki sonuçlar: İdeal kilonun üstünde<br>
               30 kg/m² ile 39, 9 kg/m² arasındaki sonuçlar: İdeal kilonun çok üstünde (obez)<br>
               40 kg/m² üzerindeki sonuçlar: İdeal kilonun çok üstünde (morbid obez)<br>
               <br>
               
               <h3>
               Vücut Kitle İndeksi Sonuçları Ne Anlama Gelir?<br>
               </h3>
               Vücut kitle indeksi hesaplamasında yağ oranı, vücut tipi, yağ ve kas dokusu gibi etmenler yer almaz. Bu nedenle, uzmanlar ideal kilo hesaplamada beden kitle indeksi ve bel çevresinin ölçümü dışında, metabolizma hızı ölçümü ve detaylı vücut analizleriyle de kişinin eğer kilo sorunu hakkında daha ayrıntılı bilgi elde ederler. Kişinin ideal kilosunun altında ya da üstünde olması; diğer etmenlerle birlikte hekim tarafından değerlendirilmelidir. Mevcut sağlık sorunlarını gidermek ve olası sağlık sorunlarını önlemek için hekimle birlikte hareket edilmelidir.
               <br>
               Erkeklerde bel çevresi 94 cm’yi geçerse artmış risk, 102 cm’yi geçerse yüksek risk olarak görülür. Bu oran kadınlarda ise 80 cm’yi geçerse artmış risk, 88 cm’yi geçerse yüksek risk olarak kabul edilir.
               <br><br>
                
               
               <h3> Vücut Kitle İndeksi ile Obezite Hesaplama<br><br></h3>
               
               Detaylı vücut kitle indeksi ile obezite hesaplamada yaşı ve cinsiyet de dikkate alınarak kilonun, vücut yağ yüzdesinin ve bel çevre ölçüsünün normal değerlerde olup olmadığını öğrenilebilir.
               <br>
               Öncelikle yağ dokusunun vücudun neresinde toplandığını bilmek, obezitenin tanı ve tedavisi için oldukça önemlidir. Yağ dokusunun vücutta birikme şekli; elma tip ve armut tip olmak üzere ikiye ayrılabilir.
               <br><br>
               Elma tip obezitede yağ göbek çevresinde birikmektedir. Armut tip obezitede ise kalça ve basenlerde biriktiği gözlemlenir. Fakat göbek çevresinde biriken yağın, kalça ve basenlere göre daha tehlikeli ve kalp hastalıklarına yakalanma riskinin daha yüksek olduğu kabul edilir.
               
                
               <br><br>
               Vücut Kitle İndeksi Dışında Neler Dikkate Alınır?
               <br>
               Vücutta biriken yağlar vücut için zararlı hormonlar üretir. Özellikle bel çevresindeki yağlanma birçok sağlık problemine yol açabilir. Vücut kitle indeksi değerinin yanı sıra bel çevresi değerini, obezitenin derecesi konusunda bilgi verir.
               <br>
               Sağlıklı kas dokusunun zararlı yağ dokusuna oranı da obezite hesaplamada önemlidir. Yetişkin bir erkeğin vücut yağ oranı % 12-18'i, kadınların ise % 20-28 oranında olması beklenir. Vücut yağ oranının erkeklerde % 25; kadınlarda ise % 30'un üzerine çıkması obezite ile ilişkilendirilir.
               <br><br>
                
               
               <h3>Çocuklarda Boy Kilo İndeksi Hesaplama<br><br></h3>
               
               Çocuklar ve gençlerde vücut kitle indeksi yaşa ve cinsiyete bağlı olarak değişiklik gösterebilmektedir.  Özellikle çocukların vücudundaki yüksek yağ oranı, kiloya bağlı hastalıklara ve ciddi sağlık sorunlarına neden olabilir. Aynı şekilde çocuğun çok zayıf olması da sağlık sorunlarına yol açabilmektedir.
               <br><br>
               Çocukların boy ve kilo takibi Pediatri uzmanları (Çocuk Sağlığı ve Hastalıkları) tarafından persantil eğrileri kullanılarak yapılır.</h4>
       </div>
       <div class="yan">
       <div class="resim1">
        <img src="./images/resim5.jpg"> 
       </div>
       <div class="bilgi">
        <table width="250px" >
            <tr>
                <td align="center">Sınıflandırma</td>
                <td align="center">VKİ(kg/m2)</td>
            </tr>
            <tr>
                <td>Zayıf</td>
                <td><18</td>
            </tr>
            <tr>
                <td >Normal</td>
                <td >18-24.9</td>
            </tr>
            <tr>
                <td >Fazla Kilolu</td>
                <td >25-29.9</td>
            </tr>
            <tr>
                <td >1. Derece Obez</td>
                <td >30-34.9</td>
            </tr>
        </tr>
        <tr>
            <td>2. Derece Obez</td>
            <td>35-39.9</td>
        </tr>
    </tr>
    <tr>
        <td>3. Derece Obez</td>
        <td>40-49.9</td>
    </tr>
</tr>
<tr>
    <td>Süper Obez</td>
    <td>50<</td>
</tr>
        </table>
       </div>
       <div class="resim2">
        <img src="./images/resim7.jpg"> 
       </div>
    </div>
    
    <button id="hesapla-button" onclick="calculateBMI()"><a href="Hesaplama.aspx">Vücut Kitle İndeksini Hesaplayalım</a></button>
    </section>
 <footer class="footer">
    <div class="footer1">
    <h4>INFORMATION</h4>
    <div class="simge"><i class="fa-regular fa-envelope"><a href="#"><p>  f211229033@ktun.edu.tr</p></a></i></div>
    <div class="simge"><i class="fa-solid fa-location-dot"><p>  Konya Teknik Üniversitesi</p></i></div>
  

</div>


 </footer>
 <div id="date-time">
    <script>
        function updateDateTime() {
            var now = new Date();
            var dateTimeString = now.toLocaleString();
            document.getElementById('date-time').innerText = dateTimeString;
        }

        updateDateTime();
        setInterval(updateDateTime, 1000);
    </script>
</div>
   
      <script>
        document.getElementById('mode-btn').addEventListener('click', () => {
            document.body.classList.toggle('dark');
            localStorage.setItem('mode', document.body.classList);
            document.getElementById('home').classList.toggle('dark'); // "home" sınıfını içeren bir element olduğunu varsayalım
            localStorage.setItem('mode', document.getElementById('home').classList);
        });
    
        if (localStorage.getItem('mode') !== null) {
            document.body.classList.add(localStorage.getItem('mode'));
            document.getElementById('mode-btn').classList.add(localStorage.getItem('mode'));
        }
      </script>
</body>
</html>
