@if(session('msg') != null)
<p style="color: red">{{session('msg')}}</p>
@endif
<form action="" method="POST">
    @csrf
    <div>
        <label for="">Email</label>
        <input type="text" name="email">
        <br>
        @error('email')
            <p style="color: red">{{ $message }}</p>
        @enderror
    </div>
    <div>
        <label for="">Password</label>
        <input type="password" name="password">
        <br>
        @error('password')
            <p style="color: red">{{ $message }}</p>
        @enderror
    </div>
    <div>
        <button type="submit">Đăng nhập</button>
    </div>
</form>