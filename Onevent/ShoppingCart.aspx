﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Onevent.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="ShoppingCartTitle" runat="server" class="ContentHead"><h1>Tavo krepšelis</h1></div>
    <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4"
        ItemType="Onevent.Models.CartItem" SelectMethod="GetShoppingCartItems" 
        CssClass="table table-striped table-bordered" >   
        <Columns>
        <asp:BoundField DataField="EventID" HeaderText="Renginio Nr." SortExpression="EventID" />        
        <asp:BoundField DataField="Event.EventName" HeaderText="Pavadinimas" />        
        <asp:BoundField DataField="Event.UnitPrice" HeaderText="Kaina (vieneto)" DataFormatString="{0:c}"/>     
        <asp:TemplateField   HeaderText="Kiekis">            
                <ItemTemplate>
                    <asp:TextBox ID="PurchaseQuantity" Width="40" runat="server" Text="<%#: Item.Quantity %>"></asp:TextBox> 
                </ItemTemplate>        
        </asp:TemplateField>    
        <asp:TemplateField HeaderText="Bendra suma">            
                <ItemTemplate>
                    <%#: String.Format("{0:c}", ((Convert.ToDouble(Item.Quantity)) *  Convert.ToDouble(Item.Event.UnitPrice)))%>
                </ItemTemplate>        
        </asp:TemplateField> 
        <asp:TemplateField HeaderText="Išimti iš krepšelio">            
                <ItemTemplate>
                    <asp:CheckBox id="Remove" runat="server"></asp:CheckBox>
                </ItemTemplate>        
        </asp:TemplateField>    
        </Columns>    
    </asp:GridView>
    <div>
        <p></p>
        <strong>
            <asp:Label ID="LabelTotalText" runat="server" Text="Viso: "></asp:Label>
            <asp:Label ID="lblTotal" runat="server" EnableViewState="false">€90.00</asp:Label>
            <br />
            <br />
            <button type="button" class="btn btn-primary">Mokėti</button>
        </strong> 
    </div>
    <br />
</asp:Content>

