<html>
<head>
<style>

#font
{
	border-top:2px solid white;
	border-bottom:2px solid white;
	border-left:2px solid white;
	border-right:2px solid white;
	margin-bottom:10px;
}
</style>
<script>
	function open_developer_details()
	{
		document.getElementById("my_details").style.display='block';
		document.getElementById("my_name").style.textDecoration = "underline"
	}
	function close_developer_details()
	{
		document.getElementById("my_details").style.display='none';
		document.getElementById("my_name").style.textDecoration = "none"
	}
</script>
</head>
<body>
 
	 <!--head background-->
	<div style="position:absolute;left:0%;top:0%; height:13.2%; width:100%; z-index:-1; background:#0E4456">   </div>
	<!--text:  -->
	<div style="position:absolute;left:13.5%; top:3.3%; font-size:45; font-weight:900; color:#FFFFFF; font-weight:bold;"> <font face="myFbFont">  blank</font></div>
		<div id="font" style="position:absolute;left:30%; top:8.1%;font-size:22; font-weight:900; color:#FFFFFF; font-weight:bold;"> <font face="sans-serif">BETA</font></div>
	<!--body background-->
	<div style="position:absolute;left:0%;top:13.2%; height:90%; width:100%; z-index:-1; background:#E7EBF2">   </div>
	<!--bottam background-->
	<div style="position:absolute;left:0%;top:110%; height:5%; width:100%; z-index:-1; background:#FFFFFF">   </div>
    
    
    
    
    
    
</body>
</html>