<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="BookShop_management.Views.Admin.Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('../../Assets/Images/123.jpg');
            background-size: cover;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h3 class="text-center text-light">Manage Books</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="" class="form-label text-light">Books Title</label>
                    <input type="text" placeholder="Title" id="BNameTb" runat="server" autocomplete="off" class="form-control custom-input" />
                </div>
                <div class="mb-3">
                    <label for="" class="form-label text-light">Books Author</label>
                    <asp:DropDownList ID="BAuthCb" runat="server" class="form-control custom-input"></asp:DropDownList>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label text-light">Categories</label>

                    <asp:DropDownList ID="BCatCb" runat="server" class="form-control custom-input"></asp:DropDownList>
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
                        <asp:Button Text="Update" runat="server" ID="UpdateBtn" class="btn-brown btn-block btn" OnClick="UpdateBtn_Click" /></div>
                    <div class="col d-grid">
                        <asp:Button Text="Save" runat="server" ID="AddBtn" class="btn-success btn-block btn" OnClick="AddBtn_Click" /></div>
                    <div class="col d-grid">
                        <asp:Button Text="Delete" runat="server" ID="DeleteBtn" class="btn-danger btn-block btn" OnClick="DeleteBtn_Click" /></div>
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
