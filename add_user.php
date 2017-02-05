<?php  
//session_start();
//if(isset($_SESSION["user"]) && !empty($_SESSION["user"]))
//{
$nm=$_POST['name'];
$rg=$_POST['reg'];
$coll=$_POST['coll'];
$em=$_POST['email'];
$gn=$_POST['gender'];
$ct=$_POST['cont'];



$connection=mysqli_connect("localhost","root","","sports_portal");
$nm=mysqli_real_escape_string($connection,$nm);
$rg=mysqli_real_escape_string($connection,$rg);
$coll=mysqli_real_escape_string($connection,$coll);
$em=mysqli_real_escape_string($connection,$em);
$gn=mysqli_real_escape_string($connection,$gn);
$ct=mysqli_real_escape_string($connection,$ct);


$query ="INSERT INTO
		 delegate_reg(Name,Reg_num,College,Email,Phone,Gender) VALUES
		 ('$nm', '$rg', '$coll', '$em', $ct, '$gn');";
$result=mysqli_query($connection,$query);

if(!$result)
{
	echo "not working";
}
else
{
$id=mysqli_insert_id($connection);
echo "<h2>User successfully registered with id ".$id."</h2>";
print_r($_POST);
}
mysqli_close($connection);
//}
/*else
{
	die("<h2>Login Failed</h2>");
}*/
?>