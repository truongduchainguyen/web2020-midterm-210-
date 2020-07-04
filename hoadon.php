<head>
    <h1 style="text-align: center;">MIDTERM WEB DEVELOPMENT</h1>
    <h2 style="text-align: center;">BẢNG HOÁ ĐƠN</h2>
</head>

<body>
    <table border="1">
        <tr>
            <th>Mã khách hàng</th>
            <th>Họ tên</th>
            <th>Điện thoại</th>
            <th>Email</th>
        </tr>
        <?php
        $conn = mysqli_connect("localhost", "root", "", "hanghoa");

        if($conn -> connect_error){
            die("Connection failed:".$conn -> connect_error);
        }

        $sql='select MaKH, HoTen, DienThoai, Email from khachhang';
        $result = $conn -> query($sql);

        if($result -> num_rows > 0){
            while($row = $result->fetch_assoc()) {
                    echo "<tr><td>".$row["MaKH"]."</td><td>".$row["HoTen"]."</td><td>".$row["DienThoai"]."</td><td>".
                    $row["Email"]."</td><td>";
            }
            echo "</table>";
        }
        else {
            echo "0 result";
        }

        $conn -> close();
        ?>
    </table>
</body> 