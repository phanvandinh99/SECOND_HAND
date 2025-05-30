<?php 
include ("../admin/includes/header.php");
?>
<body>
<div class="container-fluid">   
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Thêm sản phẩm</h4>
                    </div>
                    <div class="card-body">
                        <form action="code.php" method="POST" enctype="multipart/form-data"><!-- Uploads image -->
                            <div class="row">
                                <div class="col-md-12">
                                <label class="mb-0"><b>Chọn danh mục sản phẩm</b></label>
                                <select name="category_id" class="form-select mb-2">
                                    <option selected>Chọn danh mục sản phẩm</option>
                                    <?php 
                                        $categories= getAll("categories");
                                        if(mysqli_num_rows($categories)>0)
                                        {
                                                foreach($categories as $item)
                                            {
                                                ?>
                                                    <option value="<?= $item['id']; ?>">  <?= $item['name']?></option>
                                                <?php
                                            }
                                        }else
                                        {
                                            echo "No Category available";
                                        }
                                        
                                    ?>                                  
                                </select>
                                </div>
                                <div class="col-md-6">  
                                <br>
                                    <label class="mb-0"><b>Tên sản phẩm</b></label>
                                    <input type="text" id="full-name" required name="name" placeholder="Hãy nhập tên sản phẩm" class="form-control mb-2 "> 
                                </div>                               
                                <div class="col-md-6">
                                <br>
                                    <label class="mb-0"><b>Tên mô tả sản phẩm</b></label>
                                    <input type="text" id="slug-name" required name="slug" placeholder="Hãy nhập tên mô tả sản phẩm" class="form-control mb-2">
                                </div>
                                <div class="col-md-12">
                                <br>
                                    <label class="mb-0"><b>Mô tả sản phẩm</b></label>
                                    <textarea type="text" required name="small_description" placeholder="Hãy mô tả sản phẩm" class="form-control mb-2"></textarea>
                                </div>                               
                                <div class="col-md-12">
                                <br>
                                    <label class="mb-0"><b>Mô tả chi tiết sản phẩm</b></label>
                                    <textarea type="text" required name="description" placeholder="Hãy mô tả sản phẩm chi tiết" class="form-control mb-2"></textarea>
                                </div>
                                <div class="col-md-6">
                                <br>
                                    <label class="mb-0"><b>Giá gốc</b></label>
                                    <input type="text" required name="original_price" placeholder="Hãy nhập giá gốc" class="form-control mb-2"> 
                                </div>                               
                                <div class="col-md-6">
                                <br>
                                    <label class="mb-0"><b>Giá bán</b></label>
                                    <input type="text" required name="selling_price" placeholder="Hãy nhập giá bán" class="form-control mb-2">
                                </div>                              
                                <div class="col-md-12">
                                <br>
                                    <label class="mb-0"><b>Ảnh</b></label>
                                    <input type="file" name="image" class="form-control mb-2">
                                </div>
                                <div class="col-md-6">
                                <br>
                                    <label class="mb-0"><b>Số lượng</b></label>
                                    <input type="number" required name="qty" placeholder="Hãy nhập số lượng" class="form-control mb-2"> 
                                </div> 
                                <div class="col-md-6">
                                <br>
                                <br>
                                <br>
                                    <label class="mb-0"><b>Trạng thái</b></label>
                                    <input type="checkbox" name="status">
                                </div>
                                <div class="col-md-12">
                                    <br>
                                    <button type="submit" class="btn btn-primary" name="add_product_btn">Thêm</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
<script type="text/javascript" src="./assets/js/StringConvertToSlug.js"></script>
<?php include ("../admin/includes/footer.php"); ?>