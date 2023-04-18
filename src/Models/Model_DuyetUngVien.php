<?php
class Model_DuyetUngVien{
    public function duyetungvien($id){
        require("../connection.php");
        $sql = $conn -> query("SELECT UngTuyen.MaNguoiTimViec,UngTuyen.MaDangTin,linkava,hoten,congviec,daduyet from 
        UngTuyen
        inner join NguoiTimViec ON NguoiTimViec.MaNguoiTimViec = UngTuyen.MaNguoiTimViec
        where UngTuyen.MaDangTin in (SELECT MaDangTin from DangViec where MaCongTy = '$id')
        ;");
        if ($sql) 
            return $sql;
        else {
            die("Can't get job from database");
        }
    }
    public function yeucautuyendung($id){
        require("../connection.php");
        $sql = $conn -> query("SELECT linkava,hoten,congviec,CongViecDuocMoi.MaNguoiTimViec,daduyet
        from CongViecDuocMoi
        inner join NguoiTimViec 
        on NguoiTimViec.MaNguoiTimViec = CongViecDuocMoi.MaNguoiTimViec
        where CongViecDuocMoi.MaCongTy = '$id'
        ;");
        if ($sql) 
            return $sql;
        else {
            die("Can't get job from database");
        }
    }
    function dongyduyet($id, $idcongty){
        require("../connection.php");
        $sql = $conn -> query("
        UPDATE CongViecDuocMoi
        SET daduyet = 1
        where MaNguoiTimViec = '$id' and MaCongTy = '$idcongty'
        ;");
        if ($sql) 
            return $sql;
        else {
            die("Can't get job from database");
        }
    }
    function tuchoiduyet($id, $idcongty){
        require("../connection.php");
        $sql = $conn -> query("
        UPDATE CongViecDuocMoi
        SET daduyet = 0
        where MaNguoiTimViec = '$id' and MaCongTy = '$idcongty'
        ;");
        if ($sql) 
            return $sql;
        else {
            die("Can't get job from database");
        }
    }
}