<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftMenuControl.ascx.cs" Inherits="LeftMenuControl" %>
<asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Category.aspx?IDCAT="+Eval("ID") %>' Text='<%# Eval("NAME") %>'></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>

