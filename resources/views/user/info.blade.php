<h2>Thông tin cá nhân</h2>
<form action="show-thong-tin" method="POST">
    @csrf
    <div class="">
        <label for="">Họ tên:</label>
        <input type="text" name="name">
    </div>
    <div class="">
        <label for="">Ngày sinh</label>
        <input type="date" name="birthday">
    </div>
    <div class="">
        <label for="">Giới tính</label>
        <input type="radio" name="gender" value="1">Nam
        <input type="radio" name="gender" value="2">Nữ
        <input type="radio" name="gender" value="3">Khác
    </div>
    <div>
        <button type="submit">Submit</button>
    </div>
</form>