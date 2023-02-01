<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;
use DB;
//use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Auth;
use session;
class AuthController extends Controller
{
    // public function __construct() {
    //     $this->middleware('auth');
    // }
    public function getDangnhap(){
         return view('admin.login');
    }
    public function postDangnhap(Request $request){
        $this->validate($request,[
            'email'=>'required',
            'password'=>'required|min:3|max:32'],
            [
                'email.required'=>'Bạn chưa nhập email',
                'password.required'=>'Bạn chưa nhập mật khẩu',
                'password.min'=>'mật khẩu phải lớn hơn 3 ký tự',
                'password.max'=>'mật khẩu phải nhỏ hơn 32 ký tự'
            ]);
        $login=[
            'email'=>$request->email,
            'password'=>$request->password,
        ];

        if(Auth::attempt(['email'=>$request->email,'password'=>$request->password])){
            return redirect()->route('home');
        }else
        {
            return redirect()->route('Dangnhap')->with('msg','Đăng nhập không thành công');
        }
    }
    public function postLogOut(){
        Auth::logout();
        return redirect()->route('Dangnhap');
    }
}
