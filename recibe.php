<?php
header("Content-Type: application/xml");
$ObjJSON        = json_decode($_POST["body"]);
echo $ObjJSON;
?>