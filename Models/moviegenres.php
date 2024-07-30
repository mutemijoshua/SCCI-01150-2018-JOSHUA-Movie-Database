<?php 
    require_once("db.php");
    class genre extends db{
        //check genre
        function checkmoviegenre($genreid, $genrename){
            $sql="CALL `sp_checkmoviegenre`({$genreid} ,'{$genrename}')";
            return $this->getdata($sql)->rowCount();
        }
        //save genre
        function savemoviegenre($genreid,$genrename){
        //check if genre exists
            if($this-> checkmoviegenre($genreid,$genrename)){
                return["status"=>"exists","message"=>"category exists"];
            }else{
            $sql="CALL `sp_savemoviegenre`({$genreid},'{$genrename}',{$this->userid})";
            $this->getdata($sql);
            return ["status"=>"success","message"=>"category saved succesfully"];
            }
        }
        //get genres
        function getgenres(){
            $sql="CALL `sp_getmoviegenres`()";
            return $this->getJson($sql);
        }
        //get genre details
        function getgenredetails($genreid){
            $sql="CALL  `sp_getmoviegenredetails`({$genreid})";
            return $this ->getJSON($sql);
        }
        //delete genre
        function deletegenre($genreid){
            $sql="CALL `sp_deletemoviegenre`({$genreid},{$this->userid})";
            $this->getData($sql);
            return ["status"=>"success","message"=>"movie category deleted successfully"];
        }
    }
?>