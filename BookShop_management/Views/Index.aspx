<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BookShop_management.Views.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BookShop Management</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #3C7CC5;
            position: fixed;
            top: 0;
            width: 100%;
            padding: 10px 20px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            z-index: 1000;
        }

            .navbar a {
                color: white;
                text-decoration: none;
                padding: 14px 20px;
                transition: background-color 0.3s;
            }

                .navbar a:hover {
                    background-color: rgba(255, 255, 255, 0.1);
                }

        .section-1 {
            padding: 100px 20px 40px;
            background-image: url("../../Assets/Images/back3.jpg");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            height: 550px;
            color: aliceblue;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .section-1-text {
            max-width: 600px;
            background: rgba(0, 0, 0, 0.5);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .section-1 h1 {
            font-size: 60px;
            margin-bottom: 20px;
            font-family: 'Comic Sans MS', cursive, sans-serif;
        }

        .section-1 p {
            font-size: 20px;
            margin-bottom: 30px;
            font-family: 'Comic Sans MS', cursive, sans-serif;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            color: white;
            background-color: #FF8C00;
            border-radius: 5px;
            text-decoration: none;
            font-size: 20px;
            transition: background-color 0.3s;
        }

            .btn:hover {
                background-color: #FF4500;
            }


        .section-2 {
            padding: 60px 20px;
            text-align: center;
        }

            .section-2 h2 {
                margin-bottom: 40px;
                font-size: 36px;
                color: #3C7CC5;
            }

        .gallery {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

            .gallery .image-holder {
                flex: 1 1 250px;
                max-width: 250px;
                position: relative;
            }

            .gallery img {
                width: 100%;
                height: auto;
                border-radius: 5px;
                transition: transform 0.3s, box-shadow 0.3s;
                box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            }

                .gallery img:hover {
                    transform: scale(1.05);
                    box-shadow: 0 8px 16px rgba(0,0,0,0.3);
                }

        footer {
            background-color: #3C7CC5;
            color: white;
            text-align: center;
            padding: 20px 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }

            footer a {
                color: white;
                text-decoration: none;
                padding: 0 10px;
                transition: text-decoration 0.3s;
            }

                footer a:hover {
                    text-decoration: underline;
                }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="nav-left">
            <a href="Index.aspx">BookShop</a>
        </div>
        <div class="nav-right">
            <a href="Index.aspx">Home</a>
            <a href="Login.aspx">Login</a>
        </div>
    </nav>

    <div class="section-1">
        <div class="section-1-text">
            <h1>Welcome to Panjeree Bookshop</h1>
            <p>Order and collect your favorite books from here at cheap prices.</p>
            <p>To explore, log in</p>
            <a href="Login.aspx" class="btn">Explore Here <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
        </div>
    </div>

    <div class="section-2">
        <h2>Featured Products</h2>
        <div class="gallery">
            <div class="image-holder">
                <img src="../../Assets/Images/51d7yB5cETL.jpg" alt="img-1">
            </div>
            <div class="image-holder">
                <img src="../../Assets/Images/27362503.jpg" alt="img-2">
            </div>
            <div class="image-holder">
                <img src="../../Assets/Images/59571699.jpg" alt="img-3">
            </div>
            <div class="image-holder">
                <img src="../../Assets/Images/7d2d31959734d5c88c349afb040f7311.jpg" alt="img-4">
            </div>
            <div class="image-holder">
                <img src="../../Assets/Images/9781398518179.jpg" alt="img-5">
            </div>
            <div class="image-holder">
                <img src="../../Assets/Images/fa5d8b14ec3da43e0ed90df2fe79e867.jpg" alt="img-6">
            </div>
            <div class="image-holder">
                <img src="../../Assets/Images/medium_f2478525b5efef784b36852102d30fa99776d0b9.jpg" alt="img-7">
            </div>
            <div class="image-holder">
                <img src="../../Assets/Images/pro_pbid_4395915.jpg" alt="img-8">
            </div>
            <div class="image-holder">
                <img src="../../Assets/Images/718Z4oInFOL._AC_UF1000,1000_QL80_.jpg" alt="img-9">
            </div>
            <div class="image-holder">
                <img src="../../Assets/Images/sub-buzz-5961-1639958921-3.jpg" alt="img-10">
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Panjeree Bookshop. All rights reserved.</p>
        <p>
            <a href="Index.aspx">Home</a>  
          
        </p>
    </footer>
</body>
</html>
