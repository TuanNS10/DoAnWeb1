<div class="container">
<h1><center>Tạo tài khoản mới</center></h1>

<form action="pages/dangky/xlTaoTaiKhoan.php" id="frmCaptcha" name="frmCaptcha" method="post" onsubmit="return KiemTra()">
    <div>
        <span class="label">Tên đăng nhập:</span>
        <input class="form-control" type="text" id="us" name="us" />
        <span class="err" id="eUS"></span>
    </div>
    <div>
        <span class="label">Mật Khẩu:</span>
        <input class="form-control" type="password" id="ps" name="ps" />
        <span class="err" id="ePS"></span>
    </div>
    <div>
        <span class="label">Nhập lại mật khẩu:</span>
        <input class="form-control" type="password" id="rps" name="rps" />
        <span class="err" id="eRPS"></span>
    </div>
    <div>
        <span class="label">Tên hiển thị:</span>
        <input class="form-control" type="text" id="name" name="name" />
        <span class="err" id="eNAME"></span>
    </div>
    <div>
        <span class="label">Địa chỉ:</span>
        <input class="form-control" type="text" id="add" name="add" />
        <span class="err" id="eADD"></span>
    </div>
    <div>
        <span class="label">Điện thoại:</span>
        <input class="form-control" type="text" id="tel" name="tel" />
        <span class="err" id="eTEL"></span>
    </div>
    <div>
        <span class="label">Email:</span>
        <input class="form-control" type="text" id="mail" name="mail" />
        <span class="err" id="eMail"></span>
    </div>



    <div>


        <label for="captcha">Captcha</label>
        <img class="my-2 img-thumbnail" id="imgCaptcha" src="pages/dangky/create_image.php" />
        <input class="form-control" id="txtCaptcha" type="text" name="txtCaptcha" value="" maxlength="10" size="40" />
        <input type="hidden" id="result"></input>
        <span class="err" id="eCaptcha"></span>

    </div>


    <center><div>
        <span class="label"></span>
        <input class="btn btn-primary my-2" type="button" id="btnCaptcha" name="btnCaptcha" onclick="checkCaptcha();" value="Đăng ký" />
    </div></center>
</form>
<script type="text/javascript">
    function KiemTra() { //được chạy trong script kiểm tra captcha
        var co = true;
        var control = document.getElementById('us');
        var err = document.getElementById('eUS');
        if (control.value == "") {
            co = false;
            err.innerHTML = "Tên đăng nhập không được rỗng";
        } else {
            err.innerHTML = "";
        }
        control = document.getElementById('ps');
        err = document.getElementById('ePS');
        if (control.value == "") {
            co = false;
            err.innerHTML = "Mật khẩu không được rỗng";
        } else {
            err.innerHTML = "";
        }
        control1 = document.getElementById('rps');
        err = document.getElementById('eRPS');
        if (control.value != control1.value) {
            co = false;
            err.innerHTML = "Nhập lại mật khẩu không trùng";
        } else {
            err.innerHTML = "";
        }
        control = document.getElementById('name');
        err = document.getElementById('eNAME');
        if (control.value == "") {
            co = false;
            err.innerHTML = "Tên hiển thị không được rỗng";
        } else {
            err.innerHTML = "";
        }
        control = document.getElementById('add');
        err = document.getElementById('eADD');
        if (control.value == "") {
            co = false;
            err.innerHTML = "Địa chỉ không được rỗng";
        } else {
            err.innerHTML = "";
        }
        control = document.getElementById('tel');
        err = document.getElementById('eTEL');
        if (control.value == "") {
            co = false;
            err.innerHTML = "Số điện thoại không được rỗng";
        } else {
            err.innerHTML = "";
        }
        control = document.getElementById('mail');
        err = document.getElementById('eMail');
        if (control.value == "") {
            co = false;
            err.innerHTML = "Email không được rỗng";
        } else {
            err.innerHTML = "";
        }
       
        control = document.getElementById('txtCaptcha');
        control2 = document.getElementById('result');
        err = document.getElementById('eCaptcha');
        if (control2.value ==1) 
        {
            err.innerHTML = "";
        } else {
            co = false;
            err.innerHTML = "Nhập sai mã Captcha";
        }
        if (co==true)
        {
            document.getElementById("frmCaptcha").submit();
        };
    }
</script>
<?php
if (isset($_GET["err"])) {
?>
    <div>
        <span class="err">Tên đăng nhập đã tồn tại</span>
    </div>
<?php
}
?>
</div>