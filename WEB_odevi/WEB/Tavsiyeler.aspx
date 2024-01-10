<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tavsiyeler.aspx.cs" Inherits="WEB_odevi.Tavsiyeler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="Tavsiyeler.Css" rel="stylesheet" />
<title>Vücut Kitle İndeksi Hesaplama</title>
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
                <a href="Tavsiyeler.aspx">Tarifler</a>
                <label class="mode">
                    <input id="mode-btn" type="checkbox">
                    <span>Dark</span>
                    <span>Light</span>
                </label>
            </nav>
        </header>
        <div class="yazi"><h1><strong>Kilo vermek isteyenlerin sık tüketmesi gereken besinler</strong></h1></div>
         <div class="container">
             <div class="row">
                 <asp:Repeater ID="Tekrarlayici" runat="server">
                <ItemTemplate>
                    <div class="p-2 col-3">
                    <div class="gosterButonu"  id='<%# "link" + (Container.ItemIndex + 1) %>'>
                        <div class="kutu">
                            <img src="<%# GetResimYolu(Eval("BesinResim")) %>" alt="resim">
                            <span class="tarif-adi"><%# Eval("BesinAd") %></span>
                        </div>
                    </div>
                    <div  class="acilankutu" id='<%# "kutu" + (Container.ItemIndex + 1) %>'>
                        <div class= "icKutu" >
                            <div class="kapatButonu">X</div>
                            <div class="icerik">
                                <img class="acilankutu-img" src="<%# GetResimYolu(Eval("BesinResim")) %>" alt="resim">
                                <span class="tarif-adi"><%# Eval("BesinAd") %></span>
                                <span class="tarif-icerigi"><%# Eval("BesinAciklama") %></span>
                            </div>
                        </div>
                    </div>
                        </div>
                </ItemTemplate>
            </asp:Repeater>
             </div>
             </div>
            
               <div class="yazi"><h1><strong>Kilo almak isteyenlerin sık tüketmesi gereken besinler</strong></h1></div>
        <div class="container">     
        <div class="row">
            <asp:Repeater ID="Tekrarlayici2" runat="server">
                <ItemTemplate>
                    <div class="p-2 col-3">
                    <div class="gosterButonu" id='<%# "link2" + (Container.ItemIndex + 1) %>'>
                        <div class="kutu">
                            <img src="<%# GetResimYolu(Eval("BesinResim")) %>" alt="resim">
                            <span class="tarif-adi"><%# Eval("BesinAd") %></span>
                        </div>
                    </div>
                    <div class="acilankutu" id='<%# "kutu2" + (Container.ItemIndex + 1) %>'>
                        <div class="icKutu">
                            <div class="kapatButonu">X</div>
                            <div class="icerik">
                                <img class="acilankutu-img" src="<%# GetResimYolu(Eval("BesinResim")) %>" alt="resim">
                                <span class="tarif-adi"><%# Eval("BesinAd") %></span>
                                <span class="tarif-icerigi"><%# Eval("BesinAciklama") %></span>
                            </div>
                        </div>
                    </div>
                        </div>
                </ItemTemplate>
            </asp:Repeater>
                 </div>
        </div>
        <footer class="footer">
            <div class="footer1">
            <h4>INFORMATION</h4>
            <div class="simge"><i class="fa-regular fa-envelope"><a href="#"><p>  f211229033@ktun.edu.tr</p></a></i></div>
            <div class="simge"><i class="fa-solid fa-location-dot"><p>  Konya Teknik Üniversitesi</p></i></div>
        
        </div>
        
        
         </footer>
        </form>
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
   
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        var _kutuAdi = "";
        var _kutuAdi2 = "";

        $(".gosterButonu, .gosterButonu img").click(function (event) {

            var butonAdi = $(this).closest('div').attr('id'); // tıklanan linkin idsini aldık
            var butonNo = butonAdi.slice(4); 
            var kutuAdi = "#kutu" + butonNo;
            var kutuAdi2 = "#kutu1" + butonNo;// kutu adını elde ettik
            _kutuAdi = kutuAdi;
            _kutuAdi2 = kutuAdi2;


            $(kutuAdi).fadeIn(300);
            $(kutuAdi2).fadeIn(300);
        });


        $(".kapatButonu").click(function () {

            $(`${_kutuAdi}`).fadeOut(200); // kapatButonuna tıklanınca açılmış durumdaki kutu kapansın.

        });
        $(".kapatButonu").click(function () {

            $(`${_kutuAdi2}`).fadeOut(200); // kapatButonuna tıklanınca açılmış durumdaki kutu kapansın.

        });

        $(".kutu").click(function () {

            //$(".kutu").fadeOut(200); // kutuya tıklanırsa da açılan kutu kapansın.

        });

        $(".icKutu").click(function () {
            event.preventDefault();
            event.stopPropagation();

        });

    });
</script>
        
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
 <script>
     document.getElementById('mode-btn').addEventListener('click', () => {
         document.body.classList.toggle('dark');
         localStorage.setItem('mode', document.body.classList);
         document.getElementById('home').classList.toggle('dark');
         localStorage.setItem('mode', document.getElementById('home').classList);
     });

     if (localStorage.getItem('mode') !== null) {
         document.body.classList.add(localStorage.getItem('mode'));
         document.getElementById('mode-btn').classList.add(localStorage.getItem('mode'));
     }
 </script>
</body>
</html>
