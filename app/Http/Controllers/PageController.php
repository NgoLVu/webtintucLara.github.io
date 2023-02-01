<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TheLoaiModel;
use App\Models\LoaiTinModel;
use App\Models\TinTucModel;
use App\Models\SildeModel;
use App\Http\Requests\NewUserRequest;
use Auth;
use App\Models\UserModel;
use App\Models\Group;
class PageController extends Controller
{
    private $theloai;
    private $loaitin;
    private $slide;
    private $tintuc;
    public function __construct(){
         $this->theloai=new TheLoaiModel();
         $this->slide=new SildeModel();
         $this->loaitin=new LoaiTinModel();
         $this->tintuc=new TinTucModel();
         $this->user=new UserModel();
         $theloais=$this->theloai::all();
         if(Auth::check()){
            view()->share('nguoidung',Auth::user());
         }
    }
    public function trangchu(){
        $theloais=$this->theloai::all();
        $slides=$this->slide::all();
        $loaitins=$this->loaitin::all();
        return view('client.pages.home', compact('theloais','slides','loaitins'));
    }
    public function lienhe(){
        $theloais=$this->theloai::all();
        $slides=$this->slide::all();
        return view('client.pages.lienhe',compact('theloais','slides'));
    }
    public function slide(){
        $slides=$this->slide::all();
        return view('client.pages.home',compact('slides'));
    }
    public function loaitin($id){
        $theloais=$this->theloai::all();
        $loaitins=$this->loaitin::find($id);
        $tintucs=$this->tintuc::where('idLoaiTin',$id)->paginate(5);
        return view('client.pages.loaitin',compact('theloais','loaitins','tintucs'));
    }
    public function tintuc($id){
        $tintucs=$this->tintuc::find($id);
        $tinnoibat=$this->tintuc::where('NoiBat',1)->take(4)->get();
        $tinlienquan=$this->tintuc::where('idLoaiTin',$tintucs->idLoaiTin)->take(4)->get();

        $shareButtons = \Share::currentPage()
        ->facebook()
        ->twitter()
        ->linkedin()
        ->telegram()
        ->whatsapp()
        ->reddit();
        return view('client.pages.tintuc',compact('tintucs','tinnoibat','tinlienquan','shareButtons'));
    }
    public function timkiem(Request $request){
        $theloais=$this->theloai::all();
        $tukhoa=$request->tukhoa;
        $tintucs=$this->tintuc::where('TieuDe','like',"%$tukhoa%")->orWhere('TomTat','like',"%$tukhoa%")->orWhere('NoiDung','like',"%$tukhoa%")->take(20)->paginate(5);

        return   view('client.pages.timkiem',compact('tukhoa','tintucs','theloais'));
    }
    public function getDangky(){
        return view('client.pages.dangky');
    }
    public function postDangky(NewUserRequest $request){
        $AddUsers=[
            $request->name,
            $request->email,
            $request->group_id=2,
            bcrypt($request->password),
        ];
        $this->user->AddUser($AddUsers);
        return redirect()->route('Dangnhap_U')->with('msg','Thêm tài khoản thành công');
    }
    public function getDangnhap(){
        return view('client.pages.dangnhap');
   }
   public function postDangnhap(Request $request){
       $this->validate($request,[
           'email'=>'required',
           'password'=>'required|min:3|max:32'],
           [
               'email.required'=>'Ban chua nhap email',
               'password.required'=>'Ban chua nhap mat khau',
               'password.min'=>'mat khau phai lon hon 3 ky tu',
               'password.max'=>'mat khau phai nho hon 32 ky tu'
           ]);

       if(Auth::attempt(['email'=>$request->email,'password'=>$request->password])){
           return redirect()->route('trangchu');
       }else
       {
           return redirect()->route('Dangnhap_U')->with('msg','Đăng nhập không thành công');
       }
   }
   public function getThongtinTaikhoan(Request $request,$id=0){
    if(!empty($id)){
        $editUsers=$this->user->editUser($id);;
        if(!empty($editUsers[0])){
          $request->session()->put('id',$id);
          $editUsers=$editUsers[0];
        }else{
          return redirect()->route('ThongtinTaikhoan')->with('msg','nguoi dung khong ton tai');
        }
       }else
       {
        return redirect()->route('ThongtinTaikhoan')->with('msg','Lien ket khong ton tai');
       }
       return view('client.pages.nguoidung',compact('editUsers'));
   }
   public function postThongtinTaikhoan(Request $request){
    $id=session('id');
    if(empty($id)){
      return back()->with('msg','Lien ket khong ton tai');
    }
    $UpdateUsers=[
        'name'=>$request->name,
        // 'email'=>$request->email,
        // 'password'=>bcrypt($request->password),
        // 'group_id'=>$request->group_id=2,
         'updated_at'=>date('Y-m-d H:i:s')
      ];
    $this->user->updateUser($UpdateUsers,$id);
    return back()->with('msg','Cap nhap thanh cong');
   }
   public function postLogOut(){
       Auth::logout();
       return redirect()->route('trangchu');
   }
}
