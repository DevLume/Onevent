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
                    <img src="https://renginiai.kasvyksta.lt/uploads/events/60836/big/855083c4.jpg" alt="Lizdo Ekspedicija" style="width:100%;">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Lizdo Ekspedicija</h5>
                        <p>...</p>
                    </div>
                </div>

                <div class="item">
                    <img src="https://renginiai.kasvyksta.lt/uploads/events/60836/big/855083c4.jpg" alt="Lizdo Ekspedicija" style="width:100%;">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Lizdo Ekspedicija</h5>
                        <p>...</p>
                    </div>
                </div>
    
                <div class="item">
                    <img src="https://renginiai.kasvyksta.lt/uploads/events/60836/big/855083c4.jpg" alt="Lizdo Ekspedicija" style="width:100%;">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Lizdo Ekspedicija</h5>
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
    
    <div id="TitleContent" style="text-align: center">
        <div class="col-md-12 pt-1">
            <div class="card" style="padding: 5px 5px 20px 5px">
            <div class="card-header">
                <h3></h3>
            </div>
            <div class="card-body">
            <div id="CategoryMenu" style="text-align: center">       
                <h2><a href=# runat="server" style="text-decoration:none; color:black">Find Event for you!</a></h2>
                <asp:ListView ID="categoryList"  
                    ItemType="Onevent.Models.Category" 
                    runat="server"
                    SelectMethod="GetCategories" >
                    <ItemTemplate>
                        <b style="font-size: large; font-style: normal">
                            <a href="/EventList.aspx?id=<%#: Item.CategoryID %>">
                            <%#: Item.CategoryName %>
                            </a>
                        </b>
                    </ItemTemplate>
                    <ItemSeparatorTemplate>  |  </ItemSeparatorTemplate>
                </asp:ListView>
                
                
                            
                        
            </div>
                <div class="navbar form-inline">
            <div class="container">

                <div class="navbar-form form-group" style="width: 500px !important">
                        <form class="navbar-form" role="search">
                            <div class="form-group">
                                <button type="button" class="btn btn-light"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></button>
                                <input class="form-control" type="search" placeholder="Search events..." aria-label="Search" style="width: 500px !important">
                     </div>
                            </form>
                    </div>
                </div>
                </div>
        </div>
                
                </div>
                </div>
                </div>
    
    <div id="Popular-events" style="padding-top: 200px">
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
