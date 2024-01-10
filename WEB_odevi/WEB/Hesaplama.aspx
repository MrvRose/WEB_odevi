<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hesaplama.aspx.cs" Inherits="WEB_odevi.Hesaplama" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="Hesapla.Css" rel="stylesheet" />
    <title>Hesaplama Sayfasi</title>
</head>
<body>
    <form id="form1" runat="server">
       <header class="header">
            <div class="baslik">
                <h1>Vücut Kitle Hesaplama Sitesi</h1>
            </div>
            <nav class="navbar">
                <a href="AnaSayfa.aspx" >Anasayfa</a>
                <a href="Hesaplama.aspx" >Vücut Kitle İndeksi Hesapla</a>
                <a href="Tavsiyeler.aspx">Tavsiyeler</a>
                <label class="mode">
                    <input id="mode-btn" type="checkbox">
                    <span>Dark</span>
                    <span>Light</span>
                </label>
            </nav>
        </header>
 

        <section id="home">
            <div id="personForm">
          
                <label for="name">Adınız:</label>
                <asp:TextBox ID="name" placeholder="Adınızı girin" runat="server" />
            
                <label for="surname">Soyadınız:</label>
                <asp:TextBox  ID="surname" runat="server" placeholder="Soyadınızı girin" />
            
                <label for="gender">Cinsiyetiniz:</label>

                <asp:DropDownList ID="ddlGender" runat="server"></asp:DropDownList>
            
                <label for="weight">Kilonuz (kg):</label>
                <asp:TextBox  runat="server" ID="weight" placeholder="Kilonuzu girin" />
            
                <label for="height">Boyunuz (cm):</label>
                <asp:TextBox runat="server" ID="height" placeholder="Boyunuzu girin" />
  
                <asp:Button id="btnHesapla" runat="server" onclick="btnHesapla_Click" Text="Hesapla"/>

              </div>
            <div class="yan"><img src="images/resim11.jpg"></div>
            <div id="result" class="result-container" runat="server"></div>
           
            
        </section>

        <footer>
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
            
    </form>
</body>
</html>
