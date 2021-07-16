<fieldset>
    <legend>Tìm kiếm</legend>
    <form action="" method="get">
        <div>
            <label for="">Tên sản phẩm</label>
            <input type="text" name="keyword">
        </div>
        <div>
            <label for="">Danh mục sản phẩm</label>
            <select name="cate_id" >
                <option value="">Tất cả</option>
                @foreach($cates as $c)
                <option value="{{$c->id}}">{{$c->name}}</option>
                @endforeach
            </select>
        </div>
        <div>
            <label for="">Sắp xếp theo</label>
            <select name="order_by" >
                <option value="0">Mặc định</option>
                <option value="1">Tên alphabet</option>
                <option value="2">Tên giảm dần alphabet</option>
                <option value="3">Giá tăng dần</option>
                <option value="4">Giá giảm dần</option>
            </select>
        </div>
        <div>
            <button type="submit">Tìm kiếm</button>
        </div>
    </form>
</fieldset>
<table>
    <thead>
        <th>STT</th>
        <th>Tên SP</th>
        <th>Ảnh</th>
        <th>Danh mục</th>
        <th>Giá</th>
        <th></th>
    </thead>
    <tbody>
        @foreach($data_product as $p)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$p->name}}</td>
            <td><img src="{{asset( 'storage/' . $p->image)}}" width="70" /></td>
            <td>{{$p->cate_id}}</td>
            <td>{{$p->price}}</td>
            <td></td>
        </tr>
        @endforeach
    </tbody>
</table>