<?php
    // create a class that connects to my databse and executes sql statements

    $sql="";
    
    class db{
        private $servername;
        private $username;
        private $password;
        private $dbname;
        private $charset;
        public $userid;

        //methods
        function __construct(){
            $this->userid=1;
        }

        function connect(){
            $this->servername="localhost";
            $this->charset="utf8mb4";
            $this->username="root";
            $this->password="";
            $this->dbname="movies";
           

            try{
            // connection string driver; host;servername;dtabasename
            $dsn="mysql:host=".$this->servername.";dbname=".$this->dbname.";charset=".$this->charset;
            //PDO - PHP database object
            $pdo=new PDO($dsn,$this->username,$this->password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
            return $pdo;
            }catch(PDOException $e){
                echo "connection failed".$e->getmessage();
            }
        } 
        function getdata($sql){
            return $this->connect()->query($sql);
        }
        function getJSON($sql){
            $rst=$this->getdata($sql);
            return json_encode($rst->fetchAll(PDO::FETCH_ASSOC));
        }
        function mySQLDate($date){
            $date=Datetime::createFormat('d-M-Y',$date);
            return $date->format('Y-M-d');
        }
    }
   // $db = new db();
 //   echo $db->getJSON('call `sp_getmoviestars`()');

?>