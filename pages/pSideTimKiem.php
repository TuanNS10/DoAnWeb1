<div class="wrapper sidebartknc mt-3 mb-3">

    <h4 class="grid-title"><i class="fa fa-filter"></i>Tìm kiếm nâng cao</h4>
    <hr class="m-1">

    <!-- BEGIN FILTER BY CATEGORY -->
    <!-- BEGIN FILTER BY money -->
    <h5>Theo giá:</h5>
    Từ
    <div class="">
        <input type="text" class="form-control">
    </div>

    Đến
    <div class="">
        <input type="text" class="form-control">
    </div>
    <!-- END FILTER BY money -->



    <h5>Theo loại sản phẩm:</h5>

    <?php
    $sql = "select * from loaisanpham";
    $result = DataProvider::ExecuteQuery($sql);
    ?>

    <div class="list-group">
        <?php
        while ($row = mysqli_fetch_array($result)) {
        ?>
            <div class="checkbox list-group-item p-1">
                <label><input value="<?php echo $row["MaLoaiSanPham"]; ?>" type="checkbox" name="<?php echo $row["MaLoaiSanPham"]; ?>" class="icheck"> <?php echo $row["TenLoaiSanPham"]; ?></label>
            </div>
        <?php
                                                            }
        ?>
    </div>


    <h5>Theo hãng sản phẩm:</h5>

    <?php
                                                            $sql = "select * from hangsanxuat";
                                                            $result = DataProvider::ExecuteQuery($sql);
    ?>

    <div class="list-group">
        <?php
                                                            while ($row = mysqli_fetch_array($result)) {
        ?>
            <div class="checkbox list-group-item p-1">
                <label><input value="<?php echo $row["MaHangSanXuat"]; ?>" type="checkbox" name="<?php echo $row["MaHangSanXuat"]; ?>" class="icheck"> <?php echo $row["TenHangSanXuat"]; ?></label>
            </div>
        <?php
                                                            }
        ?>
    </div>
</div>