<?php
class Model_GetJob{
    public function getJob(){
        session_start();
        $iduser = $_SESSION['IDUser'];
        require("../connection.php");
        // mysqli_set_charset($conn, 'UTF8');
        $sql = $conn -> query("SELECT DangViec.MaDangTin,CongTy.TenCongTy,CongTy.linkava,CongTy.thanhpho,DangViec.tencongviec,DangViec.luong,DangViec.loaicongviec,DangViec.tagkinang,DangViec.thoihan
         from `CongTy` INNER JOIN DangViec ON CongTy.MaCongTy = DangViec.MaCongTy
         where DangViec.MaDangTin not in (select MaDangTin from UngTuyen where MaNguoiTimViec = '$iduser');
         ;");
        if ($sql) 
            return $sql;
        else {
            die("Can't get job from database");
        }
    }
    public function getDeitalJob($id){
        require("../connection.php");
        // mysqli_set_charset($conn, 'UTF8');
        $sql = $conn -> query("SELECT CongTy.MaCongTy,DangViec.MaDangTin,CongTy.TenCongTy,CongTy.thanhpho,DangViec.tencongviec,DangViec.luong,DangViec.motacongviec,DangViec.chucvu,DangViec.thoihan,DangViec.yeucaubangcap,DangViec.quyenloi,DangViec.yeucaucongviec,DangViec.linhvuc,DangViec.soluongtuyendung
         from `CongTy` INNER JOIN DangViec ON CongTy.MaCongTy = DangViec.MaCongTy
          where MaDangTin='$id'");
        if ($sql) 
            return $sql;
        else {
            die("Can't get job from database");
        }
    }
    public function getJobWithID($id){
        // session_start();
        $iduser = $_SESSION['IDUser'];
        require("../connection.php");
        // mysqli_set_charset($conn, 'UTF8');
        $sql = $conn -> query("SELECT DangViec.MaDangTin,CongTy.TenCongTy,CongTy.linkava,CongTy.thanhpho,DangViec.tencongviec,DangViec.luong,DangViec.loaicongviec,DangViec.tagkinang,DangViec.thoihan
         from `CongTy` INNER JOIN DangViec ON CongTy.MaCongTy = DangViec.MaCongTy
         where DangViec.MaCongTy = '$id' and DangViec.MaDangTin not in (select MaDangTin from UngTuyen where MaNguoiTimViec = '$iduser');
         ;");
        if ($sql) 
            return $sql;
        else {
            die("Can't get job from database");
        }
    }
    public function getJobWithIDClient($id){
        require("../connection.php");
        // mysqli_set_charset($conn, 'UTF8');
        $sql = $conn -> query("SELECT DangViec.MaDangTin,CongTy.TenCongTy,CongTy.linkava,CongTy.thanhpho,DangViec.tencongviec,DangViec.luong,DangViec.loaicongviec,DangViec.tagkinang,DangViec.thoihan
         from `CongTy` INNER JOIN DangViec ON CongTy.MaCongTy = DangViec.MaCongTy
         where DangViec.MaCongTy = '$id' and DangViec.MaDangTin not in (select MaDangTin from UngTuyen where MaNguoiTimViec = '$id');
         ;");
        if ($sql) 
            return $sql;
        else {
            die("Can't get job from database");
        }
    }
}