<%@ Page Title="Onevent" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
    
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="http://renginiai.kasvyksta.lt/uploads/events/53495/big/18129afc.jpg" alt="Jaunimo teatro spektaklis „AUTONOMIJA“" style="width:100%;">
                    <div class="carousel-caption d-none d-md-block">
                        <h5">Jaunimo teatro spektaklis „AUTONOMIJA“</h5>
                        <p>...</p>
                    </div>

                </div>

                <div class="item">
                    <img src="http://renginiai.kasvyksta.lt/uploads/events/60197/big/saulius.jpg" alt="Saulius Jegelevičius „Write Down Your Dream“" style="width:100%;">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Saulius Jegelevičius „Write Down Your Dream“</h5>
                        <p>...</p>
                    </div>
                </div>
    
                <div class="item">
                    <img src="http://renginiai.kasvyksta.lt/uploads/events/20026/big/3cc5d4b8.jpg" alt="VILNIUS JAZZ 2018" style="width:100%;">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>VILNIUS JAZZ 2018</h5>
                        <p>...</p>
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    
    <div id="Popular-events">
        <div class="content-title">
            <h2><a href=# runat="server" style="text-decoration:none; color:black">Populiarūs</a></h2>
            <div class="content-title-arrow"></div>
        </div>
        <div class="card-container">
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.09/id_59873_294x324.jpg">
                <div class="text-block"> 
                    <h5>Šviesos festivalis „DIDIEJI KINIJOS ŽIBINTAI“ Vilniuje</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images4.tiketa.lt/Files/2018.10/id_59989.jpg">
                <div class="text-block"> 
                    <h5>Žaidimų ir jaunimo kultūros paroda/ekspozicija GAMEON</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images3.tiketa.lt/Files/2018.08/id_58726_294x324.jpg">
                <div class="text-block"> 
                    <h5>Festivalis "DVIGUBA VAIVORYKŠTĖ IR TORNADAS"</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images2.tiketa.lt/Files/2018.10/id_60074_294x324.png">
                <div class="text-block"> 
                    <h5>Ekskursija - degustacija Volfas Engelman Studijoje</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images4.tiketa.lt/Files/2018.08/id_58308_294x324.jpg">
                <div class="text-block"> 
                    <h5>DAKHA BRAKHA (Ukraina) Vilniaus kongresų rūmuose</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images2.tiketa.lt/Files/2018.08/id_58624_294x324.jpg">
                <div class="text-block"> 
                    <h5>A.Smilgevičiūtė ir SKYLĖ. Mitologinė drama DŪŠELĖS</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.09/id_59433_294x324.jpg">
                <div class="text-block"> 
                    <h5>Trimito žvaigždė MANUEL BLANCO (Ispanija) ir LVSO</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
        </div>
    </div>

    <div id="New-events">
        <div class="content-title">
            <h2><a href=# runat="server" style="text-decoration:none; color:black">Nauji</a></h2>
            <div class="content-title-arrow"></div>
        </div>
        <div class="card-container">
            <article class="card">
                <img src="http://images2.tiketa.lt/Files/2018.10/id_60314_294x324.jpg">
                <div class="text-block"> 
                    <h5>PASIKALBAM SU MUZIKA + BIX UNPLUGGED</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images.tiketa.lt/Files/2018.09/id_59200_294x324.jpg">
                <div class="text-block"> 
                    <h5>Šokio spektaklis CHIMEROS KAROLIAI, Kaune</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images3.tiketa.lt/Files/2018.05/id_55766_294x324.png">
                <div class="text-block"> 
                    <h5>Tarptautinis turnyras „BUSHIDO HERO'S 2018 Vilnius“ šou</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images.tiketa.lt/Files/2018.09/id_59450_294x324.jpg">
                <div class="text-block"> 
                    <h5>Klaipėdos „NEPTŪNO“ krepšinio rungtynės KLAIPĖDOS sporto arenoje</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images4.tiketa.lt/Files/2018.10/id_60168_294x324.jpg">
                <div class="text-block"> 
                    <h5>Vilniaus RYTO rungtynės: Vilniaus RYTAS - Frankfurto SKYLINERS</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images3.tiketa.lt/Files/2018.10/id_60107_294x324.png">
                <div class="text-block"> 
                    <h5>Kultūrizmo ir fitneso varžybos "Galinta Cup 2018"</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images2.tiketa.lt/Files/2018.09/id_58895_294x324.jpg">
                <div class="text-block"> 
                    <h5>„Meilės garsas“  komedija (Maskvos V.Majakoskio teatro aktoriai.)</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images.tiketa.lt/Files/2018.08/id_58290_294x324.jpg">
                <div class="text-block"> 
                    <h5>PREMJERA Miuziklas MINDAUGAS KARALIUS</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Rezervuoti</a>
                        <a href="#" class="button-buy">Pirkti</a>
                    </div>
                </div>
        </article>
        </div>
    </div>
    
</asp:Content>
