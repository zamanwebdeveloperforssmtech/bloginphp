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
    if (!isset($_GET['deletePostId']) || $_GET['deletePostId'] == NULL) {
        echo "<script>window.location = 'postlist.php';</script>";
    }else{
        $deletePostId = $_GET['deletePostId'];
        $query = "SELECT * FROM tbl_post WHERE id='$deletePostId'";
        $getdata = $db->select($query);
        if ($getdata) {
        	while ($getimg = $getdata->fetch_assoc()) {
        		$dellink = $getimg['image'];
        		unlink($dellink);
        	}
        }
        
        $delquery = "DELETE FROM tbl_post WHERE id='$deletePostId'";
        $deldata = $db->delete($delquery);
        if ($deldata) {
        	echo "<script>alert('Data Deleted Successfully')</script>";
            echo "<script>window.location = 'postlist.php';</script>";
        }else{
            echo "<script>alert('Data Not Deleted.')</script>";
            echo "<script>window.location = 'postlist.php';</script>";

        }
    }
?>