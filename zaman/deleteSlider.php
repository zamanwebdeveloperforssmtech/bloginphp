<?php
include '../lib/Session.php';
Session::checkSession();
?>
<?php include '../config/config.php'; ?>
<?php include '../lib/Database.php'; ?>

<?php
$db = new Database();
?>
<?php
if (!isset($_GET['sliderId']) || $_GET['sliderId'] == NULL) {
    echo "<script>window.location = 'sliderList.php';</script>";
}else{
    $deleteSliderId = $_GET['sliderId'];
    $query = "SELECT * FROM tbl_slider WHERE id='$deleteSliderId'";
    $getdata = $db->select($query);
    if ($getdata) {
        while ($getimg = $getdata->fetch_assoc()) {
            $dellink = $getimg['image'];
            unlink($dellink);
        }
    }

    $delquery = "DELETE FROM tbl_slider WHERE id='$deleteSliderId'";
    $deldata = $db->delete($delquery);
    if ($deldata) {
        echo "<script>alert('Slider Deleted Successfully')</script>";
        echo "<script>window.location = 'sliderList.php';</script>";
    }else{
        echo "<script>alert('Slider Not Deleted.')</script>";
        echo "<script>window.location = 'sliderList.php';</script>";

    }
}
?>