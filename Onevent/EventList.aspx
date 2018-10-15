<%@ Page Title="Renginiai" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EventList.aspx.cs" Inherits="EventList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %> > Koncertai</h2>
            </hgroup>

            <div class="col-md-12 pt-1">
            <div class="card">
            <div class="card-header">
                <h3></h3>
            </div>
            <div class="card-body">

            <asp:ListView ID="eventList" runat="server" 
                DataKeyNames="EventID" GroupItemCount="4"
                ItemType="Onevent.Models.Event" SelectMethod="GetEvents">
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <hr />
                        <div class="row text-center">
                            <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                        </div>
                </GroupTemplate>
                <ItemTemplate>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 d-flex align-items-stretch">
                        
                                    <div class="card">
                                        <div class="card-header">
                                            <a href="EventDetails.aspx?eventID=<%#:Item.EventID%>">
                                        <span>
                                            <%#:Item.EventName%>
                                        </span>
                                        </a>
                                        </div>
                                        <div class="card-body">
                                        <a href="EventDetails.aspx?eventID=<%#:Item.EventID%>">
                                        <img src="/Catalog/Images/Thumbs/<%#:Item.ImagePath%>"
                                            width="200" height="150" style="border: solid" /></a>
                                        <div class="text-block"> 
                                        
                                        <p>2018-10-18</p>
                                        
                                        <p><b>Kaina: </b><%#:String.Format("{0:c}", Item.UnitPrice)%></p>
                                        
                                        <div class="form-inline">
                                            <a href="#" class="button">Rezervuoti</a>
                                            <a href="/AddToCart.aspx?eventID=<%#:Item.EventID %>" class="button-buy">Pirkti</a>
                                        </div>
                                        
                                        
                                        </div>
                                            </div>
                                    </div>
                                    
                          
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    
                    <div class="row text-center">
                            <asp:PlaceHolder runat="server" ID="groupPlaceHolder"></asp:PlaceHolder>
                        </div>
                </LayoutTemplate>
            </asp:ListView>
                </div>
                </div>
                </div>
        </div>
    </section>
</asp:Content>

