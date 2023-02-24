<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use DB;

class CommentModel extends Model
{
    use HasFactory;
    protected $table="tb_comment";
    public function tintuc(){
        return $this->belongsTo('App\Models\NewsModel','idTinTuc','id');
    }
    public function user(){
        return $this->belongsTo('App\Models\UserModel','idUser','id');
    }
    public function getAllComment(){
        return DB::table($this->table)
        ->join('tb_user','tb_user.id','=','tb_comment.idUser')
        ->join('tb_tintuc','tb_tintuc.id','=','tb_comment.idTinTuc')
        ->select('tb_comment.*','tb_user.name as Name_user','tb_tintuc.TieuDe as TieuDe')
        ->get();
    }
    public function Edit($id){
        return DB::select('SELECT*FROM '.$this->table.' where id=?',[$id]);
    }
    public function deleteComment($id){
        return DB::delete('delete from ' .$this->table.' where id = ?', [$id]);
    }
}
