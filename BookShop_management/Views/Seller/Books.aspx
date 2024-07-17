<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="BookShop_management.Views.Seller.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('../../Assets/Images/1last.jpg');
            background-size: auto;
            background-repeat: no-repeat;
            background-position: right;
            background-attachment: fixed;
        }
                .custom-input {
            background-color: bisque;
            color: black;
            border: 1px solid #ccc;
            padding: 8px;
            border-radius: 4px;
        }

            .custom-input:focus {
                outline: solid;
                border-color: black;
                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            }

            .custom-input::placeholder {
                color: black;
                opacity: 1;
            }

        .btn-brown {
            background-color: coral;
            color: white;
        }

        .text-color {
            color: white;
            font-weight: bolder;
            font-size: large;
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
    <h3 class="header-background">Manage Books</h3>
</div>
            
         </div>
     </div>
     <div class="row">
         <div class="col-md-4">
             <div class="mb-3">
    <label for="" class="form-label text-light">Books Title</label>
    <input type="text" placeholder="Title" id="BNameTb" runat="server" autocomplete="off" class="form-control custom-input" />
</div>
             <div class="mb-3">
                 <label for="" class="form-label text-light">Price</label>
                 <input type="text" placeholder="Price" id="PriceTb" runat="server" autocomplete="off" class="form-control custom-input" />
             </div>
             <div class="mb-3">
                 <label for="" class="form-label text-light">Quantity</label>
                 <input type="text" placeholder="Quantity" id="QtyTb" runat="server" autocomplete="off" class="form-control custom-input" />
             </div>
             <div class="row">
                 <asp:Label runat="server" ID="ErrMsg" class="text-color text-center"></asp:Label>
                 <div class="col d-grid">
                     <asp:Button Text="Update" runat="server" ID="UpdateBtn" class="btn-warning  btn-block btn" OnClick="UpdateBtn_Click" /></div>
               </div>
         </div>

         <div class="col-md-8">
             <asp:GridView ID="BooksList" runat="server" class="table" CellPadding="3" AutoGenerateSelectButton="True" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                 <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                 <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                 <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                 <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                 <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#FFF1D4" />
                 <SortedAscendingHeaderStyle BackColor="#B95C30" />
                 <SortedDescendingCellStyle BackColor="#F1E5CE" />
                 <SortedDescendingHeaderStyle BackColor="#93451F" />
             </asp:GridView>
         </div>
     </div>
 </div>
</asp:Content>
