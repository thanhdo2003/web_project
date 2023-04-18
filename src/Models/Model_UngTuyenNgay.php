<?php
class Model_UngTuyenNgay
{
    public function ungTuyenNgay($iduser, $idbaidang)
    {
        require("./src/connection.php");
        $test = "select * from UngTuyen where MaDangTin = '$idbaidang' and MaNguoiTimViec = '$iduser'";
        $num = mysqli_num_rows($conn->query($test));
        if ($num ==0){
            $sql = "INSERT INTO UngTuyen(
                daduyet,
                MaDangTin,
                MaNguoiTimViec
            )
            values(-1,$idbaidang,$iduser);";
            if ($conn->query($sql) === TRUE) {
                return 1;
            } else {
                return 0;
            }
        } else return 0;
        $conn->close();
    }
    public function tuyenNgay($idcongty, $iduser){
        require("./src/connection.php");
        $test = "select * from CongViecDuocMoi where MaCongTy = '$idcongty' and MaNguoiTimViec = '$iduser'";
        $num = mysqli_num_rows($conn->query($test));
        if ($num ==0){
            $sql = "INSERT INTO CongViecDuocMoi(
                daduyet,
                MaCongTy,
                MaNguoiTimViec
            )
            values(-1,$idcongty,$iduser);";
            if ($conn->query($sql) === TRUE) {
                return 1;
            } else {
                return 0;
            }
        } else return 0;
        $conn->close();
    }
}
