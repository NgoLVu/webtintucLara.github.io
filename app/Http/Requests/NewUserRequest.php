<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NewUserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'=>'required|min:3',
            'email'=>'required|email|unique:tb_user,email',
            'password'=>'required|min:6|max:32',
            'passwordAgain'=>'required|same:password'
        ];
    }
    public function messages(){
        return [
            'required'=>':attribute bắt buộc phải nhập',
            'name.min'=>':attribute phải lớn hơn 3 ký tự',
            'email.email'=>':attribute phải nhập đúng dạng',
            'email.unique'=>':attribute đã tồn tại',
            'password.min'=>':attribute không được nhỏ hơn 6 ký tự',
            'password.max'=>':attribute không được lớn hơn 32 ký tự',
            'passwordAgain.same'=>'::attribute chưa đúng',

        ];
    }
    public function attributes(){
        return [
            'name'=>'Tên người dùng',
            'email'=>'Email',
            'password'=>'mật khẩu',
            'passwordAgain'=>'mật khẩu nhập lại'
        ];
    }
}
