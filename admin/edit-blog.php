<?php 
include ("../admin/includes/header.php");
?>
<script src="./assets/js/tinymce.min.js" referrerpolicy="origin"></script>
<body>
<div class="container-fluid">   
    <div class="row">
        <div class="col-md-12">
        <?php
            if(isset($_GET['id']))
            {
                $id = $_GET['id'];
                $blog = getByID("blog", $id);

                if(mysqli_num_rows($blog) > 0)
                {
                    $blog = mysqli_fetch_array($blog);
        ?>
        <div class="card">
            <div class="card-header">
                <h4>Chỉnh sửa: <?= htmlspecialchars($blog['title']) ?></h4>
            </div>
            <div class="card-body">
                <form action="code.php" method="POST" enctype="multipart/form-data">

                    <div class="row">
                        <input type="hidden" name="id" value="<?= htmlspecialchars($blog['id']) ?>">
                        <div class="col-md-12">
                            <label for=""><b>Tiêu đề</b></label>
                            <input type="text" required name="title" value="<?= htmlspecialchars($blog['title']) ?>" class="form-control">
                        </div>
                        <div class="col-md-12">
                        <br>
                            <label for=""><b>Tên mô tả tin tức</b></label>
                            <input type="text" required name="slug" value="<?= htmlspecialchars($blog['slug']) ?>" class="form-control">
                        </div>
                        <div class="col-md-12">
                        <br>
                            <label for=""><b>Ảnh mô tả</b></label>
                            <input type="file" name="image" class="form-control">
                            <input type="hidden" name="old_image" value="<?= htmlspecialchars($blog['img']) ?>">
                            <img src="../images/<?= htmlspecialchars($blog['img']) ?>" height="50px" width="50px" alt="">
                        </div>
                        <div class="col-md-12">
                            <label class="mb-0"><b>Nội dung</b></label>
                            <textarea name="small_content" style="height: 150px" class="form-control mb-2"><?= htmlspecialchars($blog['small_content']) ?></textarea>
                        </div>
                        <div class="col-md-12">
                        <br>
                            <label for=""><b>Nội dung chi tiết</b></label>
                            <textarea name="content" id="myTextarea"><?= htmlspecialchars($blog['content']) ?></textarea>
                        </div>
                        <input type="hidden" name="update_blog_btn" value="true">
                        <div class="col-md-12">
                            <br>
                            <button type="submit" class="btn btn-primary">Cập nhật</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <?php
                } else {
                    echo "Blog not found";
                }
            } else {
                echo "Id missing from url";
            }
        ?>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="./assets/js/StringConvertToSlug.js"></script>
<script>
    tinymce.init({
        selector: "#myTextarea",
        plugins: "link image code",
        toolbar: "undo redo | formatselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | code",
        height: 500
    });
</script>
<?php include ("../admin/includes/footer.php"); ?>
