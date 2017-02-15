<?php  
//session_start();
//if(isset($_SESSION["user"]) && !empty($_SESSION["user"]))
//{


if ($_SERVER['REQUEST_METHOD'] != 'POST' || !isset($_POST['secret']))
{
	echo "Some error occured"; 
	die();
}

$nm=$_POST['name'];
$rg=$_POST['reg'];
$coll=$_POST['coll'];
$em=$_POST['email'];
$gn=$_POST['gender'];
$ct=$_POST['cont'];
$usr=1;


$connection=mysqli_connect("localhost","phpmyadmin","utkarsh_123","sports_portal");
$nm=mysqli_real_escape_string($connection,$nm);
$rg=mysqli_real_escape_string($connection,$rg);
$coll=mysqli_real_escape_string($connection,$coll);
$em=mysqli_real_escape_string($connection,$em);
$gn=mysqli_real_escape_string($connection,$gn);
$ct=mysqli_real_escape_string($connection,$ct);
$usr=mysqli_real_escape_string($connection,$usr);

$query ="INSERT INTO
		 delegate_reg(Name,Reg_num,College,Email,Phone,Gender,U_id) VALUES
		 ('$nm', '$rg', '$coll', '$em', '$ct', '$gn','$usr');";
$result=mysqli_query($connection,$query);

if(!$result)
{
	echo "not working";
}
else
{
$id=mysqli_insert_id($connection);
echo "<h2>User successfully registered with id ".$id."</h2>";
echo "<pre>";
print_r($_POST);
echo "</pre>";
}
mysqli_close($connection);
//}
/*else
{
	die("<h2>Login Failed</h2>");
}*/
?>