@extends('layouts.client')
@section('content')
   <!-- Page Content -->
   <div class="container">

    <!-- slider -->
    <div class="row carousel-holder">
        <div class="col-md-2">
        </div>
        <div class="col-md-8">
            <div class="panel panel-default panel-primary">
                  <div class="panel-heading">Thông tin tài khoản</div>
                  @if(session('msg'))
                  <div class="alert alert-success text-center">{{session('msg')}}</div>
              @endif
                  <div class="panel-body">
                    <form action="{{route('postThongtinTaikhoan')}}" method="POST">
                        @csrf
                        <div>
                            <label>Họ tên</label>
                              <input type="text" class="form-control" placeholder="Username" name="name" aria-describedby="basic-addon1"
                              value="{{old('name')??$editUsers->name}}">
                              @error('name')
                              <span style="color: red">{{$message}}</span>
                              @enderror
                        </div>
                        <br>
                        <div>
                            <label>Email</label>
                              <input type="email" class="form-control" placeholder="Email" name="email" aria-describedby="basic-addon1"
                              value="{{old('email')?? $editUsers->email}}" disabled
                              >
                              @error('email')
                              <span style="color: red">{{$message}}</span>
                              @enderror
                        </div>
                        <br>
                        <div>
                            <label>Đổi mật khẩu</label>
                              <input type="password" class="form-control" name="password" aria-describedby="basic-addon1" value="{{old('password')??$editUsers->password}}" disabled>
                              @error('password')
                              <span style="color: red">{{$message}}</span>
                              @enderror
                            </div>
                        <br>
                        <button type="submit" class="btn btn-default center-block btn-primary">Sửa thông tin tài khoản
                        </button>

                    </form>
                  </div>
            </div>
        </div>
        <div class="col-md-2">
        </div>
    </div>
    <!-- end slide -->
</div>
<!-- end Page Content -->
@endsection
