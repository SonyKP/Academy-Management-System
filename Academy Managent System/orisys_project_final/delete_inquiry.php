
<?php
  session_start();
  require('db_connectivity.php');
  if(isset($_GET['id']))
  {
$id=$_GET['id'];
$sql="delete from contact_tb where id=$id";
if(mysqli_query($mysql,$sql))
{
header("Location:view_inquiry_by_admin.php");

}
}
?>

	
