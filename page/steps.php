<div style="padding:40px;">
    <form action="steps" method='POST'>
        <textarea name="content" required></textarea>
        <br>
        <input type="submit" name="submit" class="btn btn-primary" value="Submit">
    </form>

    <script src="ckeditor/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('content');
    </script>
</div>

<?php 

    if($_POST['submit']){
        extract($_POST);

        $tblquery = "INSERT INTO meal_steps VALUES(:id, :userId, :mealId, :steps, :date)";
        $tblvalue = array(
            ':id' => null,
            ':userId' => $_SESSION['myId'],
            ':mealId' => $_SESSION['mealId'],
            ':steps' => $content,
            ':date' => date("Y-m-d")
        );
        $insert = $collect->tbl_insert($tblquery, $tblvalue);
        if($insert){
            echo '<script> window.location="http://localhost/food/myMeals"; </script>';
        }else{
            echo "
                <div class='alert alert-danger alert-dismissible fade show text-dark text-center' role='alert'>
                    An error occur while performing this task.
                </div>
            ";
        }
    }

?>