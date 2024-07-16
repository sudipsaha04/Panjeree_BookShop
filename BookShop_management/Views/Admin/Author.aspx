﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="BookShop_management.Views.Admin.Author" %>

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
                <h3 class="text-center text-light">Manage Authors</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="" class="form-label text-light">Author Name</label>
                    <input type="text" placeholder="Title" autocomplete="off" class="form-control custom-input" runat="server" id="ANameTb" />
                </div>
                <div class="mb-3">
                    <label for="" class="form-label text-light">Author Gender</label>
                    <asp:DropDownList runat="server" class="form-control custom-input" ID="GenCb">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label text-light">Country</label>

                    <asp:DropDownList ID="CountryCb" runat="server" class="form-control custom-input">
                        <asp:ListItem>Bangladesh</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>Spain</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="row">
                    <asp:Label runat="server" ID="ErrMsg" class=" text-center text-color "></asp:Label>
                    <div class="col d-grid">
                        <asp:Button Text="Update" runat="server" ID="EditBtn" class="btn-brown btn-block btn" OnClick="EditBtn_Click" /></div>
                    <div class="col d-grid">
                        <asp:Button Text="Save" runat="server" ID="SaveBtn" class="btn-success btn-block btn" OnClick="SaveBtn_Click" /></div>
                    <div class="col d-grid">
                        <asp:Button Text="Delete" runat="server" ID="DeleteBtn" class="btn-danger btn-block btn" OnClick="DeleteBtn_Click" /></div>
                </div>
            </div>

            <div class="col-md-8">
                <asp:GridView ID="AuthorsList" runat="server" class="table" CellPadding="3" AutoGenerateSelectButton="True" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
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
