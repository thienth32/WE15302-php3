{{$schoolname}}
@dump($system_users)
<fieldset>
    <legend>Tìm kiếm</legend>
    <form action="" method="get">
        <div>
            <label for="">Tên sản phẩm</label>
            <input type="text" name="keyword" @isset($searchData['keyword']) value="{{$searchData['keyword']}}" @endisset>
        </div>
        <div>
            <label for="">Danh mục sản phẩm</label>
            <select name="cate_id" >
                <option value="">Tất cả</option>
                @foreach($cates as $c)
                <option @if(isset($searchData['cate_id']) && $c->id == $searchData['cate_id']) selected @endif value="{{$c->id}}">{{$c->name}}</option>
                @endforeach
            </select>
        </div>
        <div>
            <label for="">Sắp xếp theo</label>
            <select name="order_by" >
                <option value="0">Mặc định</option>
                <option @if(isset($searchData['order_by']) &&  $searchData['order_by'] == 1) selected @endif  value="1">Tên alphabet</option>
                <option @if(isset($searchData['order_by']) &&  $searchData['order_by'] == 2) selected @endif value="2">Tên giảm dần alphabet</option>
                <option @if(isset($searchData['order_by']) &&  $searchData['order_by'] == 3) selected @endif value="3">Giá tăng dần</option>
                <option @if(isset($searchData['order_by']) &&  $searchData['order_by'] == 4) selected @endif value="4">Giá giảm dần</option>
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
        <th>Tags</th>
        <th></th>
    </thead>
    <tbody>
        @foreach($data_product as $p)
        <tr>
            <td>{{(($data_product->currentPage()-1)*20) + $loop->iteration}}</td>
            <td>{{$p->name}}</td>
            <td><img src="{{asset( 'storage/' . $p->image)}}" width="70" /></td>
            <td>
                <a href="{{route('category.detail', ['id' => $p->cate_id])}}">{{$p->category->name}}</a>
            </td>
            <td>{{$p->price}}</td>
            <td>
                {{-- @isset($p->tags)
                    @foreach($p->tags as $t)
                    <span style="border: solid 1px #ccc; margin-right: 5px;">{{$t->name}}</span>
                    @endforeach
                @endisset --}}
            </td>
            <td></td>
        </tr>
        @endforeach
        
    </tbody>
    
</table>
{{$data_product->links()}}