<?php if (isset($_COOKIE['msg'])) { ?>
    <div class="alert alert-success">
        <strong>Thông báo</strong> <?= $_COOKIE['msg'] ?>
    </div>
<?php } ?>
<hr>
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <form action="?mod=sanpham&act=update" method="POST" role="form" enctype="multipart/form-data">
        <input type="hidden" name="MaSP" value="<?= $data['MaSP'] ?>">
        <div class="form-group">
            <label for="cars">Danh mục: </label>
            <select id="" name="MaDM" class="form-control">
                <?php foreach ($data_dm as $row) { ?>
                    <option <?= ($row['MaDM'] == $data['MaDM'])?'selected':''?> value="<?= $row['MaDM'] ?>"><?= $row['TenDM'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="form-group">
            <label for="cars">Loại sản phẩm: </label>
            <select id="" name="MaLSP" class="form-control">
                <?php foreach ($data_lsp as $row) { ?>
                    <option <?= ($row['MaLSP'] == $data['MaLSP'])?'selected':''?> value="<?= $row['MaLSP'] ?>"><?= $row['TenLSP'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="form-group">
            <label for="">Tên sản phẩm</label>
            <input type="text" class="form-control" id="" placeholder="" name="TenSP" value="<?=$data['TenSP']?>">
        </div>
        <div class="form-group">
            <label for="">Đơn giá</label>
            <input type="text" class="form-control" id="" placeholder="" name="DonGia" value="<?=$data['DonGia']?>">
        </div>
        <div class="form-group">
            <label for="">Số lượng</label>
            <input type="text" class="form-control" id="" placeholder="" name="SoLuong" value="<?=$data['SoLuong']?>">
        </div>
        <div class="form-group">
            <label for="">Hình ảnh 1</label>
            <img src="../public/<?=$data['HinhAnh1']?>" height="200px" width="200px">
            <input type="file" class="form-control" id="" placeholder="" name="HinhAnh1" value="<?=$data['HinhAnh1']?>">
        </div>
        <div class="form-group">
            <label for="">Hình ảnh 2</label>
            <img src="../public/<?=$data['HinhAnh2']?>" height="200px" width="200px">
            <input type="file" class="form-control" id="" placeholder="" name="HinhAnh2" value="<?=$data['HinhAnh2']?>">
        </div>
        <div class="form-group">
            <label for="">Hình ảnh 3</label>
            <img src="../public/<?=$data['HinhAnh3']?>" height="200px" width="200px">
            <input type="file" class="form-control" id="" placeholder="" name="HinhAnh3" value="<?=$data['HinhAnh3']?>">
        </div>
        <div class="form-group">
            <label for="cars">Mã khuyến mãi </label>
            <select id="" name="MaKM" class="form-control">
                <?php foreach ($data_km as $row) { ?>
                    <option <?= ($row['MaKM'] == $data['MaKM'])?'selected':''?> value="<?= $row['MaKM'] ?>"><?= $row['TenKM'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="form-group">
            <label for="">Tên sản phẩm</label>
            <input type="text" class="form-control" id="" placeholder="" name="Tensanpham" value="<?=$data['Tensanpham']?>">
        </div>
        <div class="form-group">
            <label for="">Tình trạng</label>
            <input type="text" class="form-control" id="" placeholder="" name="Tinhtrang" value="<?=$data['Tinhtrang']?>">
        </div>
        <div class="form-group">
            <label for="">Trọng lượng</label>
            <input type="text" class="form-control" id="" placeholder="" name="Trongluong" value="<?=$data['Trongluong']?>">
        </div>
        <div class="form-group">
            <label for="">Kích thước</label>
            <input type="text" class="form-control" id="" placeholder="" name="Kichthuoc" value="<?=$data['Kichthuoc']?>">
        </div>
        <div class="form-group">
            <label for="">Chất liệu</label>
            <input type="text" class="form-control" id="" placeholder="" name="Chatlieu" value="<?=$data['Chatlieu']?>">
        </div>
        <div class="form-group">
            <label for="">Số lượng</label>
            <input type="text" class="form-control" id="" placeholder="" name="Soluongg" value="<?=$data['Soluongg']?>">
        </div>
        <div class="form-group">
            <label for="">Màu sắc</label>
            <input type="text" class="form-control" id="" placeholder="" name="Mausac" value="<?=$data['Mausac']?>">
        </div>
        <div class="form-group">
            <label for="">Đơn vị tính</label>
            <input type="text" class="form-control" id="" placeholder="" name="Donvitinh" value="<?=$data['Donvitinh']?>">
        </div>
        <div class="form-group">
            <label for="">Nơi sản xuất</label>
            <input type="text" class="form-control" id="" placeholder="" name="Noisanxuat" value="<?=$data['Noisanxuat']?>">
        </div>
        <label for="">Mô tả</label>
        <div class="form-group">
            <textarea class="form-control" id="summernote" placeholder="" name="MoTa"><?=$data['MoTa']?></textarea>
        </div>
        <div class="form-group">
            <label for="">Trạng thái</label>
            <input <?=($data['TrangThai']==1)?'checked':''?> type="checkbox" id="" placeholder="" value="1" name="TrangThai"><em>(Check cho phép hiển thị sản phẩm)</em>
        </div>
        <button type="submit" class="btn btn-primary">Cập nhật</button>
    </form>
    <script>
        $(document).ready(function() {
            $('#summernote').summernote();
        });
    </script>