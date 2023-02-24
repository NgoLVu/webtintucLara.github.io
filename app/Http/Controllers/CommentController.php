<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Models\CommentModel;
use App\Models\NewsModel;
class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    protected $comment;
    public function __construct(){
        $this->comment=new CommentModel();
    }
    public function index()
    {
        $title="Quản Lý bình luận";
        $comments=$this->comment->getAllComment();
        // dd($comments);
        return view('admin.comment.index',compact('title','comments'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }
    public function postComment($id,Request $request){
        $idTinTuc=$id;
        $tintuc=NewsModel::find($id);
        $comment=new CommentModel;
        $comment->idTinTuc=$idTinTuc;
        $comment->idUser=Auth::user()->id;
        $comment->NoiDung=$request->NoiDung;
        $comment->save();

        // return redirect("tintuc/$id/".$tintuc->id.".html")->with('thongbao','viet binh luan thanh cong');
        return redirect("tintuc/$id.html")->with('thongbao','viet binh luan thanh cong');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store($id,Request $request)
    {

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id=0)
    {
        {
            if(!empty($id)){
                $detete=$this->comment->Edit($id);
                if(!empty($detete[0])){
                    $detete=$this->comment->deleteComment($id);
                    if($detete){
                        $msg="Xóa thành công";
                    }else {
                        $msg="Không thể xóa ,vui lòng thử lại";
                    }
                }else{
                    $msg="Liên kết không tồn tại";
                }
                return redirect()->route('comment.index')->with('msg',$msg);
            }
        }
    }
}
