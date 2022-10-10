<?php 
    $mysqli = new mysqli('localhost', 'root', 'mysql', 'phpjquery');
    $resultStr = '';
    $id = $_GET['id'];
    $query = "SELECT functionName, summary, example FROM functions where languageId='$id'";
    if ($result = $mysqli->query($query)){
    if ($result->num_rows > 0){
    $resultStr.='<ul>';
    while($row = $result->fetch_assoc()){
    $resultStr.= '<li><strong>'.$row['functionName'].'</strong>
    - '.$row['summary'];
    $resultStr.= '<div><pre>'.$row['example'].'</pre></div>';
    '</li>';
    }
    $resultStr.= '</ul>';
    }
    else {
    $resultStr = 'Nothing found';
    }
    }
    echo $resultStr;
