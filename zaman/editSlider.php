<?php include 'inc/header.php';?>
<?php include 'inc/sidebarAdmin.php';?>
<?php
if (!isset($_GET['sliderId']) || $_GET['sliderId'] == NULL) {
    echo "<script>window.location = 'sliderList.php';</script>";
}else{
    $sliderId = $_GET['sliderId'];
}
?>

<div class="grid_10">

    <div class="box round first grid">
        <h2>Update Post</h2>
        <?php
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $title = mysqli_real_escape_string($db->link, $_POST['title']);

            $permited = array('jpg', 'jpeg', 'png', 'gif');
            $file_name = $_FILES['image']['name'];
            $file_size = $_FILES['image']['size'];
            $file_temp = $_FILES['image']['tmp_name'];

            $div = explode('.', $file_name);
            $file_ext = strtolower(end($div));
            $unique_image = substr(md5(time()), 0, 10).'.'.$file_ext;
            $uploaded_image = "upload/slider/".$unique_image;
            if ($title == "") {
                echo "<span class='error'>Field must not be empty!!..</span>";
            }else{



                if (!empty($file_name)) {
                    if ($file_size > 1048567)
                    {
                        echo "<span class='error'>Image size should be less then 1 MB!</span>";
                    }
                    elseif (in_array($file_ext, $permited) === false)
                    {
                        echo "<span class='error'>You can uploads only:-".implode(',', $permited)."</span>";
                    }
                    else
                    {
                        move_uploaded_file($file_temp, $uploaded_image);
                        $query = "UPDATE tbl_slider SET 
                              title = '$title',
                              image = '$uploaded_image'
                            WHERE id = '$sliderId'";
                        $updated_rows = $db->update($query);
                        if ($updated_rows)
                        {
                            echo "<span class='success'> Slider Updated Successfully.</span>";
                        }
                        else
                        {
                            echo "<span class='error'> Slider Not Updated !</span>";
                        }
                    }
                }else{
                    $query = "UPDATE tbl_slider SET
                                            title = '$title'
                                            
                                            WHERE id = '$sliderId'";
                    $updated_rows = $db->update($query);
                    if ($updated_rows)
                    {
                        echo "<span class='success'> Slider Updated Successfully.</span>";
                    }
                    else
                    {
                        echo "<span class='error'> Slider Not Updated !</span>";
                    }
                }
            }
        }

        ?>
        <div class="block">
            <?php
            $query = "SELECT * FROM tbl_slider WHERE id = '$sliderId'";
            $getSlider = $db->select($query);
            if ($getSlider) {
                while ($sliderResult = $getSlider->fetch_assoc()) {
                    ?>
                    <form action="" method="post" enctype="multipart/form-data">
                        <table class="form">

                            <tr>
                                <td>
                                    <label>Title</label>
                                </td>
                                <td>
                                    <input type="text" name="title" value="<?php echo $sliderResult['title']; ?>" class="medium" />
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <label>Upload New Slider Image</label>
                                </td>
                                <td>
                                    <img src="<?php echo $sliderResult['image']; ?>" height="100px" width="250px"><br>
                                    <input type="file" name="image" />
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input type="submit" name="submit" Value="Update Slider" />
                                </td>
                            </tr>
                        </table>
                    </form>
                    <?php
                }
            }
            ?>
        </div>
    </div>
</div>

<!-- Load TinyMCE -->
<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
    <!-- Load TinyMCE -->
</script>
<?php include 'inc/footer.php';?>

