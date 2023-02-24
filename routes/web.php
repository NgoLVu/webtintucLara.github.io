<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\TypesOfNewsController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\SlideController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\ShareController;
use App\Models\TheLoaiModel;
use App\Models\TinTucModel;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('admin/dangnhap',[AuthController::class,'getDangnhap'])->name('Dangnhap');
Route::post('admin/dangnhap',[AuthController::class,'postDangnhap'])->name('postDangNhap');
Route::get('admin/logout',[AuthController::class,'postLogOut'])->name('postLogOut');

Route::prefix('admin')->middleware('AdminLogin')->group(function(){
    Route::get('/', function () {
        return view('layouts.admin');
    })->name('home');
Route::prefix('user')->name('user.')->group(function(){
    Route::get('/',[UserController::class,'index'])->name('index');
    Route::get('/create',[UserController::class,'create'])->name('create');
    Route::post('/create',[UserController::class,'store'])->name('store');
    Route::get('/edit/{id}',[UserController::class,'edit'])->name('edit');
    Route::post('/update',[UserController::class,'update'])->name('update');
    Route::get('/delete/{id}',[UserController::class,'destroy'])->name('delete');
});
Route::prefix('category')->name('category.')->group(function(){
    Route::get('/',[CategoryController::class,'index'])->name('index');
    Route::get('/create',[CategoryController::class,'create'])->name('create');
    Route::post('/create',[CategoryController::class,'store'])->name('store');
    Route::get('/edit/{id}',[CategoryController::class,'edit'])->name('edit');
    Route::post('/update',[CategoryController::class,'update'])->name('update');
    Route::get('/delete/{id}',[CategoryController::class,'destroy'])->name('delete');
});
Route::prefix('slide')->name('slide.')->group(function(){
    Route::get('/',[SlideController::class,'index'])->name('index');
    Route::get('/create',[SlideController::class,'create'])->name('create');
    Route::post('/create',[SlideController::class,'store'])->name('store');
    Route::get('/edit/{id}',[SlideController::class,'edit'])->name('edit');
    Route::post('/update',[SlideController::class,'update'])->name('update');
    Route::get('/delete/{id}',[SlideController::class,'destroy'])->name('delete');
});
Route::prefix('Loai-tin')->name('Loaitin.')->group(function(){
    Route::get('/',[TypesOfNewsController::class,'index'])->name('index');
    Route::get('/create',[TypesOfNewsController::class,'create'])->name('create');
    Route::post('/create',[TypesOfNewsController::class,'store'])->name('store');
    Route::get('/edit/{id}',[TypesOfNewsController::class,'edit'])->name('edit');
    Route::post('/update',[TypesOfNewsController::class,'update'])->name('update');
    Route::get('/delete/{id}',[TypesOfNewsController::class,'destroy'])->name('delete');
});
Route::prefix('Tin-tuc')->name('Tintuc.')->group(function(){
    Route::get('/',[NewsController::class,'index'])->name('index');
    Route::get('/create',[NewsController::class,'create'])->name('create');
    Route::post('/create',[NewsController::class,'store'])->name('store');
    Route::get('/edit/{id}',[NewsController::class,'edit'])->name('edit');
    Route::post('/update',[NewsController::class,'update'])->name('update');
    Route::get('/delete/{id}',[NewsController::class,'destroy'])->name('delete');
});
Route::prefix('comment')->name('comment.')->group(function(){
    Route::get('/',[CommentController::class,'index'])->name('index');
    Route::get('/delete/{id}',[CommentController::class,'destroy'])->name('delete');
});
});
// Phần route ở phía view client
Route::get('/',[PageController::class,'trangchu'])->name('trangchu');
Route::get('/lienhe',[PageController::class,'lienhe'])->name('lienhe');
Route::get('/loaitin/{id}.html',[PageController::class,'loaitin'])->name('loaitin');
Route::get('/tintuc/{id}.html',[PageController::class,'tintuc'])->name('tintuc');
Route::post('timkiem',[PageController::class,'timkiem'])->name('timkiem');

Route::get('dangnhap',[PageController::class,'getDangnhap'])->name('Dangnhap_U');
Route::post('dangnhap',[PageController::class,'postDangnhap'])->name('postDangNhap_U');
Route::get('dangky',[PageController::class,'getDangky'])->name('Dangky_U');
Route::post('dangky',[PageController::class,'postDangky'])->name('postDangky_U');
Route::get('thongtintaikhoan/{id}',[PageController::class,'getThongtinTaikhoan'])->name('ThongtinTaikhoan');
Route::post('thongtintaikhoan',[PageController::class,'postThongtinTaikhoan'])->name('postThongtinTaikhoan');
Route::get('logout',[PageController::class,'postLogOut'])->name('postLogOut_U');

Route::post('tintuc/comment/{id}',[CommentController::class,'postComment']);

Route::get('404', function(){
    return view('errors.404');
});
