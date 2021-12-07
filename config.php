<?php

    $dbHost = 'mysql.mps.kinghost.net';
    $dbUsername = 'mps';
    $dbPassword = 'ads2021';
    $dbName = 'mps';
    
    $conexao = new mysqli($dbHost,$dbUsername,$dbPassword,$dbName);
    
    if($conexao->connect_errno)
    {
        echo "Houve um erro ao fazer contato com o servidor";
    }

?>