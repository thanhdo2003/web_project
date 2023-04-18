<?php
class Model_Like{
    public function getSaveCT($id){
        require("../connection.php");
        $sql = $conn -> query("SELECT DangViec.MaCongTy,DangViec.MaDangTin,CongTy.TenCongTy,CongTy.linkava,CongTy.thanhpho,DangViec.tencongviec,DangViec.luong,DangViec.loaicongviec,DangViec.tagkinang,DangViec.thoihan
         from `DangViec` INNER JOIN CongTy ON CongTy.MaCongTy = DangViec.MaCongTy
        WHERE DangViec.MaDangTin in (SELECT MaDangTin from `LuuCT` WHERE MaNguoiTimViec = '$id')
        ;");
        if ($sql) 
            return $sql;
        else {
            die("Can't get job from database");
        }
    }
    public function getSaveNTV($id){
        require("../connection.php");
        $sql = $conn -> query("SELECT *
         from `NguoiTimViec`
        WHERE MaNguoiTimViec in (SELECT MaNguoiTimViec from `LuuNTV` WHERE MaCongTy = '$id')
        ;");
        if ($sql) 
            return $sql;
        else {
            die("Can't get job from database");
        }
    }
}