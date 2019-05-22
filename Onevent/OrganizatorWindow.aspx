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
                    <asp:TextBox runat="server" ID="ticketPriceInput" type="text" OnBlur ="priceChange()" />
                </li>
            <li class ="registrationFormItem"><asp:Button OnClick="Submit" ID="submitButton" class ="submitButton" runat="server" Text="Registruoti renginį"></asp:Button></li> 
            </form>
        </ul> 
 </div>
</ul>
</form> 
    <div id="organizatorEvents" style="padding-top: 100px">
        <div class="content-title">
            <h2><a href=# runat="server" style="text-decoration:none; color:black">Jūsų sukurti renginiai</a></h2>
            <div class="content-title-arrow"></div>
        </div>
        <div class="container1">
        <table>
            <tr class="tableHeader">
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
        </div>
       
      
    </div>
        <script src="Scripts/submitButton.js"></script>

</asp:Content>
