<?php
    require_once("../models/moviegenres.php");

    $genre = new genre();
    
    if(isset($_POST['savemoviegenre'])){
        $genreid=$_POST['genreid'];
        $genrename=$_POST['genrename'];
        $response=$genre->savemoviegenre($genreid,$genrename);
        echo json_encode($response);
    
    }
    if(isset($_GET['getmoviegenres'])){
        echo $genre->getgenres();
    }
    if(isset($_GET['getmoviegenredetails']));{
        $genreid=$_GET['genreid'];
        echo $genre->getgenredetails($genreid);
    }
    if(isset($_POST['deletegenre'])){
        $genreid=$_POST['genreid'];
        $response=$genre->deletemoviegenre($genreid);
        echo json_encode($response);
    }
?>