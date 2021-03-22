
<?php
  session_start();
  require('db_connectivity.php');
  if(isset($_GET['id']))
  {
$id=$_GET['id'];
$enroll=$_GET['enroll'];
    $sql="delete from student_details where login_id=$id";
if(mysqli_query($mysql,$sql))
{
$sql1="delete from login_page where login_id=$id";
if(mysqli_query($mysql,$sql1))
{
header("Location:view_stud.php");
}
}
}
?>

	
