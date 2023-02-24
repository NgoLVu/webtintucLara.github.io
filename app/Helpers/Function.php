<?php
use App\Models\Group;
use App\Models\CategoryModel;
use App\models\TypesOfNewsModel;
function getAllGroup(){
    $Group= new Group;
    return $Group->getGroup();
}
function getAllTheLoai(){
    $Theloai=new CategoryModel;
    return $Theloai->getAllCategory();
}
function getAllLoaitin(){
    $loaitin=new TypesOfNewsModel;
    return $loaitin->getAllLoaiTin();

}
?>
