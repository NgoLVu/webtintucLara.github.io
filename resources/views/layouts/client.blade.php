<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Web tin tuc</title>
    <base href="{{asset('')}}">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link rel="stylesheet" href="css/my.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Share JS -->
<script src="{{ asset('js/share.js') }}"></script>
<style>
    #social-links ul{
         padding-left: 0;
    }
    #social-links ul li {
         display: inline-block;
    }
    #social-links ul li a {
         padding: 6px;
         border: 1px solid #ccc;
         border-radius: 5px;
         margin: 1px;
         font-size: 25px;
    }
    #social-links .fa-facebook{
          color: #0d6efd;
    }
    #social-links .fa-twitter{
          color: deepskyblue;
    }
    #social-links .fa-linkedin{
          color: #0e76a8;
    }
    #social-links .fa-whatsapp{
         color: #25D366
    }
    #social-links .fa-reddit{
         color: #FF4500;;
    }
    #social-links .fa-telegram{
         color: #0088cc;
    }
    </style>
</head>
<body>
    @include('client.block.header')
    @yield('content')
    <!-- Footer -->
    <hr>
    @include('client.block.footer')
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/my.js"></script>

</body>

</html>
