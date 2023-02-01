@extends('layouts.client')
@section('content')
<div class="container">

    <!-- slider -->
    @include('client.block.slide')
    <!-- end slide -->

    <div class="space20"></div>


    <div class="row main-left">
        @include('client.block.menu')
        <div class="col-md-9">
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color:#337AB7; color:white;" >
                    <h2 style="margin-top:0px; margin-bottom:0px;">Liên hệ</h2>
                </div>

                <div class="panel-body">
                    <!-- item -->
                    <h3><span class="glyphicon glyphicon-align-left"></span> Thông tin liên hệ</h3>
                    <h4>Ngô Long Vũ</h4>
                    <div class="break"></div>
                       <h4><span class= "glyphicon glyphicon-home "></span> Địa chỉ : </h4>
                    <p>138A Trần Hưng Đạo,Phường Quảng Tiến,Thành phố Sầm Sơn,Thanh Hóa </p>

                    <h4><span class="glyphicon glyphicon-envelope"></span> Email : </h4>
                    <p>ngovu2121@gmail.com</p>

                    <h4><span class="glyphicon glyphicon-phone-alt"></span> Điện thoại : </h4>
                    <p>0382088863</p>

                    <br>
                    <h3><span class="glyphicon glyphicon-globe"></span> Bản đồ</h3>
                    <div class="break"></div>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3754.714895840077!2d105.8964681743998!3d19.767264129909737!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313650c27bc7127f%3A0x6d605f95a2ba086e!2zMTM4IFRy4bqnbiBIxrBuZyDEkOG6oW8sIFF14bqjbmcgVGnhur9uLCBT4bqnbSBTxqFuLCBUaGFuaCBIb8OhLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1671291953892!5m2!1svi!2s" width="810" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
</div>
@endsection
