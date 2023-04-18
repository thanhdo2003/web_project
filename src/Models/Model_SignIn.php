<?php
    class Model_Signin{
        public function login($conn,$username,$password,$who){
            if ($who)
                $sql = "SELECT TenDangNhap,matkhau FROM TaiKhoanNguoiTimViec where TenDangNhap='$username' and matkhau='$password';";
            else $sql = "SELECT TenDangNhap,matkhau FROM TaiKhoanCongTy where TenDangNhap='$username' and matkhau='$password';";
            if($result = $conn ->query($sql)){
                $c = mysqli_num_rows($result);
                // giải phóng bộ nhớ
                mysqli_free_result($result);
            }
            return $c;
        }
        public function getId($conn,$username,$password,$who){
            if ($who)
                $sql = $conn->query("SELECT MaNguoiTimViec FROM TaiKhoanNguoiTimViec where TenDangNhap='$username' and matkhau='$password';");
            else $sql = $conn->query("SELECT MaCongTy FROM TaiKhoanCongTy where TenDangNhap='$username' and matkhau='$password';");
            $data = array();
            while ($r = $sql->fetch_assoc())
            {
                if ($who)
                    $data[] = ["id"=>$r["MaNguoiTimViec"]];
                else $data[] = ["id"=>$r["MaCongTy"]];
            }
            return $data[0]["id"];
        }
    };
?>