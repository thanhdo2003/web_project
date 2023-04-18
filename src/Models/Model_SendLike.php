<?php
class Model_SendLike{
    public function sendlike($iduser, $idbaidang) {
        require("./src/connection.php");
        
        // Use prepared statements
        $stmt = $conn->prepare("SELECT * FROM LuuCT WHERE MaDangTin = ? AND MaNguoiTimViec = ?");
        $stmt->bind_param("ii", $idbaidang, $iduser);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if ($result->num_rows == 0) {
            // Use parameter binding
            $stmt = $conn->prepare("INSERT INTO LuuCT (MaCongTy, MaDangTin, MaNguoiTimViec)
                                    VALUES ((SELECT MaCongTy FROM DangViec WHERE MaDangTin = ?), ?, ?)");
            $stmt->bind_param("iii", $idbaidang, $idbaidang, $iduser);
            $stmt->execute();
    
            if ($stmt->affected_rows > 0) {
                $conn->close();
                return 1;
            } else {
                $conn->close();
                return 0;
            }
        } else {
            $conn->close();
            return 0;
        }
    }
    
    public function sendlikeByAdmin($idcongty, $iduser) {
        require("./src/connection.php");
    
        // Use prepared statements
        $stmt = $conn->prepare("SELECT * FROM LuuNTV WHERE MaCongTy = ? AND MaNguoiTimViec = ?");
        $stmt->bind_param("ii", $idcongty, $iduser);
        $stmt->execute();
        $result = $stmt->get_result();
    
        if ($result->num_rows == 0) {
            // Use prepared statements
            $stmt = $conn->prepare("INSERT INTO LuuNTV (MaCongTy, MaNguoiTimViec) VALUES (?, ?)");
            $stmt->bind_param("ii", $idcongty, $iduser);
            $stmt->execute();
    
            if ($stmt->affected_rows > 0) {
                $conn->close();
                return 1;
            } else {
                $conn->close();
                return 0;
            }
        } else {
            $conn->close();
            return 0;
        }
    }
    
}