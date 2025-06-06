<?php
include("./includes/header.php");

$page = isset($_GET['page']) ? max((int)$_GET['page'], 1) : 1;
$type = isset($_GET['type']) ? $_GET['type'] : '';
$search = isset($_GET['search']) ? $_GET['search'] : '';

// Lấy danh sách sản phẩm với các điều kiện lọc
$products = getLatestProducts(9, $page, $type, $search);

// Lấy tổng số sản phẩm để phân trang
$total_products = totalValue('products', $type, $search);
$total_pages = ceil($total_products / 9);

if ($page > $total_pages) {
    $page = $total_pages;
}
?>

<body>
    <div class="bg-main">
        <div class="container">
            <div class="box">
                <div class="breadcumb">
                    <a href="index.php">Trang chủ</a>
                    <span><i class='bx bxs-chevrons-right'></i></span>
                    <a href="./products.php">Tất cả sản phẩm</a>
                </div>
            </div>
            <div class="box">
                <div class="row">
                    <div class="col-3 filter-col" id="filter-col">
                        <div class="box filter-toggle-box">
                            <button class="btn-flat btn-hover" id="filter-close">close</button>
                        </div>
                        <div class="box">
                            <span class="filter-header">Danh mục</span>
                            <ul class="filter-list">
                                <?php
                                $categories = getAllActive("categories");
                                if (mysqli_num_rows($categories) > 0) {
                                    foreach ($categories as $item) {
                                        echo "<li><a href='./products.php?type={$item['slug']}&search={$search}'>{$item['name']}</a></li>";
                                    }
                                } else {
                                    echo "Không có danh mục.";
                                }
                                ?>
                            </ul>
                        </div>
                    </div>
                    <div class="col-9 col-md-12">
                        <div class="box filter-toggle-box">
                            <button id="filter-toggle">Lọc</button>
                        </div>
                        <div class="box">
                            <div class="row" id="products">
                                <?php foreach ($products as $product) { ?>
                                    <div class="col-4 col-md-6 col-sm-12">
                                        <div class="product-card">
                                            <div class="product-card-img">
                                                <img src="./images/<?= $product['image'] ?>" alt="">
                                            </div>
                                            <div class="product-card-info">
                                                <div class="product-btn">
                                                    <a href="./product-detail.php?slug=<?= $product['slug'] ?>" class="btn-flat btn-hover btn-shop-now">Mua ngay</a>
                                                    <button class="btn-flat btn-hover btn-cart-add">
                                                        <i class='bx bxs-cart-add'></i>
                                                    </button>
                                                </div>
                                                <div class="product-card-name">
                                                    <?= $product['name'] ?>
                                                </div>
                                                <div class="product-card-price">
                                                    <span><del><?= $product['original_price'] ?> VNĐ</del></span>
                                                    <span class="curr-price"><?= $product['selling_price'] ?> VNĐ</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="box">
                            <ul class="pagination">
                                <?php if ($page > 1) { ?>
                                    <li><a href="?page=<?= $page - 1 ?>&search=<?= $search ?>&type=<?= $type ?>"><i class='bx bxs-chevron-left'></i></a></li>
                                <?php } ?>

                                <?php for ($i = 1; $i <= $total_pages; $i++) { ?>
                                    <li><a href="?page=<?= $i ?>&search=<?= $search ?>&type=<?= $type ?>" class="<?= ($i == $page) ? 'active' : '' ?>"><?= $i ?></a></li>
                                <?php } ?>

                                <?php if ($page < $total_pages) { ?>
                                    <li><a href="?page=<?= $page + 1 ?>&search=<?= $search ?>&type=<?= $type ?>"><i class='bx bxs-chevron-right'></i></a></li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php include("./includes/footer.php") ?>
    <script src="./assets/js/app.js"></script>
    <script src="./assets/js/products.js"></script>
</body>

</html>