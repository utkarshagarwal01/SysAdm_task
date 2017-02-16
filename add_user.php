<?php  
//session_start();
//if(isset($_SESSION["user"]) && !empty($_SESSION["user"]))
//{

require_once("check_functions.php");

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

$flags= array();

$flags[0]=validate_name($nm);
$flags[1]=validate_reg($rg);
$flags[2]=validate_college($coll);
$flags[3]=validate_email($em);
$flags[4]=validate_gender($gn);
$flags[5]=validate_phone($ct);

if(in_array(0, $flags))
{
	if($flags[0]==0)
		echo "Name is invalid<br><br>";
	if($flags[1]==0)
		echo "Registration number is invalid<br><br>";
	if($flags[2]==0)
		echo "College is invalid<br><br>";
	if($flags[3]==0)
		echo "Email is invalid<br><br>";
	if($flags[4]==0)
		echo "Gender is invalid<br><br>";
	if($flags[5]==0)
		echo "Phone is invalid<br><br>";
	die();
}

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
	echo "Not working";
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