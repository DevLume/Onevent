<%@ Page Title="Onevent" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="OrganizatorWindow.aspx.cs" Inherits="OrganizatorWindow" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<form class="form-style-7">
        <link href="form-style-7.css" rel="stylesheet" />
<ul>
<div class="registrationForm">
    <h1> Registruoti renginį: </h1>
        <ul class ="registrationFormContainer">
            <form>
                <li class ="registrationFormItem">
                    <h3>Pavadinimas:</h3>
                    <asp:TextBox runat="server" ID="nameInput" type="text" />
                </li>
                <li class ="registrationFormItem">
                    <h3>Kategorija:</h3>
                     <asp:DropDownList runat="server" ID="categoryInput">
                      <asp:ListItem value="Nepasirinkta kategorija"/>
                      <asp:ListItem value="Teatras"/>
                      <asp:ListItem value="Koncertas"/>
                      <asp:ListItem value="Festivalis"/>
                      <asp:ListItem value="Aktyvi veikla"/>
                      <asp:ListItem value="Paroda"/>
                    </asp:DropDownList> 
                </li>
                <li class ="registrationFormItem">
                    <h3>Aprašas:</h3>                  
                    <asp:TextBox ID="descriptionInput" TextMode="MultiLine" class="descriptionText" runat="server" type="text" />
                </li>
                <li class ="registrationFormItem">
                    <h3>Renginio vieta:</h3>
                    <asp:TextBox ID="addressInput" runat="server" type="text" />
                </li>
                <li class ="registrationFormItem">
                    <h3>Organizatoriaus el. paštas:</h3>
                    <asp:TextBox ID="organizatorInput" runat="server" type="text" />
                </li>
                 <li class ="registrationFormItem">
                    <h3>Bilietų skaičius:</h3>
                     <asp:TextBox runat="server" ID="TicketCountInput" type="text" />
                </li>
                <li class ="registrationFormItem">
                    <h3>Bilietų kaina:</h3>
                    <asp:TextBox runat="server" ID="ticketPriceInput" type="text" />
                </li>
            <li class ="registrationFormItem"><asp:Button OnClick="Submit" ID="submitButton" class ="submitButton" runat="server" Text="Registruoti renginį"></asp:Button></li> 
            </form>
        </ul> 
 </div>
</ul>
</form> 
   
        <table>
            <tr>
                <th></th>
                <th>
                    ID
                </th>
                <th>
                    Pavadinimas
                </th>
                <th>
                    Bilietu skaicius
                </th>
                <th>
                    Bilieto kaina
                </th>
                <th>
                    Organizatoriaus vardas
                </th>
                <th>
                    Organizatoriaus Email
                </th>
                <th>
                    Renginio aprasas
                </th>
            </tr>
            <%foreach (var item in Events)
            {%>
                <tr>
                    <th></th>
                    <th>
                        <%= item.EventID %>
                    </th>
                    <th>
                        <%= item.EventName %>
                    </th>
                    <th>
                        <%= item.TicketCount %>
                    </th>
                    <th>
                        <%= item.UnitPrice %>
                    </th>
                    <th>
                        <%= ada.GetUser(item.OrganizatorEmail).Username %>
                    </th>
                    <th>
                        <%= item.OrganizatorEmail %>
                    </th>
                    <th>
                        <%= item.Description %>
                    </th>
                </tr>
            <%} %>
        </table>

        <div id="organizatorEvents" style="padding-top: 100px">
        <div class="content-title">
            <h2><a href=# runat="server" style="text-decoration:none; color:black">Jūsų sukurti renginiai</a></h2>
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
