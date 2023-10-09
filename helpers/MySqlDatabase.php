<?php

class MySqlDatabase
{
    private $connection;

    public function __construct($serverName, $userName, $password, $databaseName)
    {
        $this->connection = mysqli_connect(
            $serverName,
            $userName,
            $password,
            $databaseName);

        if (!$this->connection) {
            die('Connection failed: ' . mysqli_connect_error());
        }
    }

    public function __destruct()
    {
        mysqli_close($this->connection);
    }

    public function query($sql)
    {
        Logger::info('Ejecutando query: ' . $sql);
        return mysqli_query($this->connection, $sql);
    }

    public function querySelectAssoc($sql)
    {
        Logger::info('Ejecutando querySelectAssoc: ' . $sql);
        $result = mysqli_query($this->connection, $sql);
        return mysqli_fetch_assoc($result);
    }

    public function querySelectAll($sql)
    {
        Logger::info('Ejecutando querySelectAll: ' . $sql);
        $result = mysqli_query($this->connection, $sql);
        return mysqli_fetch_all($result);
    }

    public function querySelectFields($sql)
    {
        Logger::info('Ejecutando querySelectFields: ' . $sql);
        $result = mysqli_query($this->connection, $sql);
        return mysqli_fetch_fields($result);
    }

    public function queryWithID($sql)
    {
        Logger::info('Ejecutando queryWithID: ' . $sql);
        $ultimoID = false;
        $result = mysqli_query($this->connection, $sql);

        if($result){
            $ultimoID = $this->getLastInsertedID();
        }
        return $ultimoID;
    }

    private  function getLastInsertedID(){
        Logger::info('getLastInsertedID');
        return mysqli_insert_id($this->connection);
    }
}