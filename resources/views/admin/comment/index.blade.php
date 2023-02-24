<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

@extends('layouts.admin')
@section('title')
{{$title}}
@endsection

@section('content')
<h2>{{$title}}</h2>
@if(session('msg'))
        <div class="alert alert-success">{{session('msg')}}</div>

    @endif
<hr/>
<div class="container">
    <div class="row">
        <div class="col-12 ">
<table class="table table-bordered">
    <thead>
        <tr>
            <th width="3%">STT</th>
            <th width="3%">ID Người dùng</th>
            <th>Người dùng</th>
            <th>Tin tức</th>
            <th>Nội Dung</th>
            <th>Thời gian bình luận</th>
            <th width="5%">Xóa</th>
        </tr>
    </thead>
    <tbody>
        @if(!empty($comments))
        @foreach($comments as $key=>$item)
            <tr>
                <td>{{$key+1}}</td>
                <td>{{$item->idUser}}</td>
                <td>{{$item->Name_user}}</td>
                <td>{{$item->TieuDe}}</td>
                <td>{{$item->NoiDung}}</td>
                <td>{{$item->created_at}}</td>
                <td><a onclick="return confirm('Ban co chac chac muon xoa khong')" href="{{route('comment.delete',['id'=>$item->id])}}" class="btn btn-danger btn-sm">Xóa</a></td>
            </tr>
            @endforeach
    @else
            <tr>
                <td colspan="6">Không có bình luận nào</td>
            </tr>
    @endif
</tbody>
</table>
{{-- <div class="d-flex justify-content-center">{{$comments->links()}}</div>
</div> --}}
@endsection
