<?php

namespace App\Http\Requests;

use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class ProductFormRequest extends FormRequest
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
            'name' => [
                'required',
                Rule::unique('products')->ignore($this->id)
            ],
            'price' => 'required|numeric',
            'quantity' => 'required|numeric',
            'uploadfile' => [
                function ($attribute, $value, $fail) {
                    // dd($value);
                    if(!$value){
                        $fail('Hãy chọn ảnh cho sản phẩm');
                    }
                    // if ($value === 'foo') {
                    //     $fail('The '.$attribute.' is invalid.');
                    // }
                }
            ]
        ];
    }

    public function messages(){
        return [
            'name.required' => 'Hãy nhập tên sản phẩm',
            'name.unique' => 'Tên sản phẩm đã tồn tại',
            'price.required' => 'Hãy nhập giá sản phẩm',
            'price.numeric' => 'Giá sản phẩm không đúng định dạng',
            'price.size' => 'Giá sản phẩm thấp nhất phải bằng 1',
            'quantity.required' => 'Hãy nhập số lượng sản phẩm',
            'quantity.numeric' => 'Số lượng sản phẩm không đúng định dạng',
            'quantity.size' => 'Số lượng sản phẩm thấp nhất phải bằng 1',
        ];
    }
}
