<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="BookShop_management.Views.Seller.Author" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('../../Assets/Images/1last.jpg');
            background-size: auto;
            background-repeat: no-repeat;
            background-position: right;
            background-attachment: fixed;
        }



        .header-background {
            background-color: coral;
            color: black;
            display: inline-block;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 30px;
        }

        .header-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col">

                <div class="header-container">
                    <h3 class="header-background">View Author's Book</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:GridView ID="AuthorsList" runat="server" class="table" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </div>
            <div class="col-md-6">
                <asp:GridView ID="BooksList" runat="server" class="table" CellPadding="2" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

