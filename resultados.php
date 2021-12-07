<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style_espera.css">
    <title>Resultados</title>
    <style>
       
    </style>
</head>
<body>
    <div>
        <h1>Você finalizou sua sua partida</h1>
        <form action="resultados.php" method="POST">
        <img id='stones_img' src="imgs/cien3.gif" width="120">
            <p class="encerramento">
                Aconpanhe na tabela abaixo os Ranks dos jogadores que estão na partida e sua pontuação
                e o vencedor será determinado com maior pontuação
                
                <?php 
                    resultados();
               ?>
            </p>
              
            <button class="link"><a href="resultados.php">Atualizar Ranking</a></button>
            <button class="link"><a href="login.php">Voltar para o login</a></button>
            <button class="link" name='encerra'>Encerra partida</button>


        </form>
    </div>
</body>
</html>

<?php
extract($_POST);

if(isset($encerra)) encerrar();
function resultados(){
    session_start();
    unset($_SESSION['prova']); //resetando a session que contém a prova
    include("cons.php");
    include("DLL.php");
    
        $partida = $_SESSION['ranking'];
        $pontuac = "select * from evolucao_jogador, evolucao_jogo where evolucao_jogo.jogador_id = evolucao_jogador.id and partida = ".$partida." ORDER BY pontuacao desc;";
        $result11 = banco($server, $user, $password, $db, $pontuac);
        echo "
                <table class='pontuacoes' border=1>
                    <tr>
                        <td class='rank_p'>Jogador</td><td class='rank_p'>Pontuação</td>
                    </tr>";
        while ($ranks = $result11->fetch_assoc()) {
            echo "
                <tr>
                    <td class='rank'>".$ranks["jogador"]."</td><td class='rank_c'>".$ranks["pontuacao"]."</td>
                </tr>
            ";
        }
        echo "
            </table>";
}

function encerrar(){
    session_start();
    include("cons.php");
    $id_jogador = $_SESSION['pk_jogador'];
    $encerramento = "delete from evolucao_jogo where jogador_id = ".$id_jogador.";";
    $result10 = banco($server, $user, $password, $db, $encerramento);

    $inicio_partida = date('d/m/Y h:i');
    $hora_final = "update evolucao_prova set jogada_fim = '".$inicio_partida."' where jogador_id = ".$id_jogador.";";
    $hora_fim = banco($server, $user, $password, $db, $hora_final);

    $logout = date('d/m/Y h:i');
    $logout_jogador = "update evolucao_historico_login set data_hora_logout = '".$logout."' where jogador_id = ".$id_jogador.";";
    $logout_bd = banco($server, $user, $password, $db, $logout_jogador);

}

?>