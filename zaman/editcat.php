<?php include 'inc/header.php';?>
<?php include 'inc/sidebarAdmin.php';?>
<?php
    if (!isset($_GET['catid']) || $_GET['catid'] == NULL) {
        echo "<script>window.location = 'catlist.php';</script>";
    }else{
        $id = $_GET['catid'];
    }
?>

        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>Update Category</h2>
               <div class="block copyblock"> 
                <?php
                    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                        $addCatName = $_POST['name'];
                        $addCatName = mysqli_real_escape_string($db->link, $addCatName);
                        if (empty($addCatName)) {
                            echo "<span class='error'>Field must not be empty!!!</span>";
                        }
                        else{
                            $query = "UPDATE tbl_category SET name = '$addCatName' WHERE id='$id'";
                            $updated_row = $db->update($query);
                            if ($updated_row) {
                                echo "<span class='success'>Category Updated successfully</span>";
                            }else{
                                echo "<span class='error'>Category not Updated successfully</span>";
                            }
                        }
                    }
                ?>
                <?php
                    $query = "SELECT * FROM tbl_category WHERE id='$id' order by id desc";
                    $Category = $db->select($query);
                    while ($result = $Category->fetch_assoc()) {                    
                ?>
                 <form action="" method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text" name="name" value="<?php echo $result['name'];?>" class="medium" />
                            </td>
                        </tr>
						<tr> 
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>
                    </table>
                    </form>
                    <?php } ?>

                </div>
            </div>
        </div>
<?php include 'inc/footer.php';?>