<head>
    <h1 style="text-align: center;">MIDTERM WEB DEVELOPMENT</h1>
    <h2 style="text-align: center;">BẢNG LOẠI HÀNG</h2>
</head>

<body>
    <table>
        <tr>
            <th>Mã Loại</th>
            <th>Tên Loại</th>
            <th>Mô tả</th>
        </tr>
        <?php
        $conn = mysqli_connect("localhost", "root", "", "hanghoa");

        if($conn -> connect_error){
            die("Connection failed:".$conn -> connect_error);
        }

        $sql='select MaLoai, TenLoai, MoTa from loai';
        $result = $conn -> query($sql);

        if($result -> num_rows > 0){
            while($row = $result->fetch_assoc()) {
                    echo "<tr><td>".$row["MaLoai"]."</td><td>".$row["TenLoai"]."</td><td>".$row["MoTa"]."</td><td>";
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