@extends('admin.layouts.main')
@section('content')
<form action="" method="post" enctype="multipart/form-data">
    @csrf
    <div class="row">
        <div class="col-6">
            <div class="form-group">
                <label for="">Tên sản phẩm</label>
                <input type="text" name="name" class="form-control" value="{{old('name')}}">
                @error('name')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="">Danh mục</label>
                <select name="cate_id" class="form-control">
                    @foreach($cates as $c)
                    <option value="{{$c->id}}" @if($c->id == old('cate_id')) selected @endif>{{$c->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="">Giá</label>
                <input type="text" name="price" class="form-control" value="{{old('price')}}">
                @error('price')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="">Số lượng</label>
                <input type="text" name="quantity" class="form-control" value="{{old('quantity')}}">
                @error('quantity')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
        </div>
        <div class="col-6">
            <div class="add-product-preview-img">

            </div>
            <div class="form-group">
                <label for="">Ảnh sản phẩm</label>
                <input type="file" name="uploadfile" class="form-control">
                @error('uploadfile')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
        </div>
        <div class="col-md-12">
            <table class="table table-stripped">
                <thead>
                    <th>File</th>
                    <th>Thumbnail</th>
                    <th>
                        <button class="btn btn-success add-img" type="button">Thêm ảnh</button>
                    </th>
                </thead>
                <tbody id="gallery">
                    
                </tbody>
            </table>    
            
        </div>
        <div class="col-12">
            <div class="form-group">
                <label for="">Chi tiết sản phẩm:</label>
                <textarea name="detail" class=form-control  rows="10">{{old('detail')}}</textarea>
            </div>
        </div>
        <div class="text-right">
            <button type="submit" class="btn btn-primary">Lưu</button>
            <a href="{{route('product.index')}}" class="btn btn-danger">Hủy</a>
        </div>
    </div>
    
</form>
<br>
@endsection
@section('pagejs')
    <script>
        $(document).ready(function(){
            $('.add-img').click(function(){
                var rowId = Date.now();
                $('#gallery').append(`
                    <tr id="${rowId}">
                        <td>
                            <div class="form-group">
                                <input row_id="${rowId}" type="file" name="galleries[]" class="form-control" onchange="loadFile(event, ${rowId})">
                            </div>
                        </td>
                        <td>
                            <img row_id="${rowId}" src="" width="80">
                        </td>
                        <td>
                            <button class="btn btn-danger" onclick="removeImg(this)">Xóa</button>
                        </td>
                    </tr>
                `);
            })
        })

        function loadFile(event, el_rowId) {
            var reader = new FileReader();
            reader.onload = function(){
                var output = document.querySelector(`img[row_id="${el_rowId}"]`);
                output.src = reader.result;
            };
            reader.readAsDataURL(event.target.files[0]);
        };

        function removeImg(el){
            $(el).parent().parent().remove();
        }

    </script>
@endsection