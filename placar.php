<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style_placar.css">
    <title>Document</title>
</head>
<body>


<div>
        <h1>Placar com a prova de todos o jogadores</h1>
        <form action="****.php" method="POST">
            <p class="encerramento">Acompahe o ranking de todos os jogadores que já jogaram
            <?php 
                    placar();
               ?>
            </p>
            <p class="link"><a href="home.php">Voltar para o login</a></p>


        </form>
</div>







<?php



function placar(){
    session_start();
    include("cons.php");
    include("DLL.php");
    
        $rank_geral = "select jogador, pontuacao, questao_acerto, questao_erro, jogada_inicio, jogada_fim from evolucao_prova, evolucao_jogador where evolucao_prova.jogador_id = evolucao_jogador.id ORDER BY pontuacao desc;";
        $rank_geral_bd = banco($server, $user, $password, $db, $rank_geral);
        echo "
                <table class='pontuacoes' border=1>
                    <tr>
                        <td class='rank_p'>Jogador</td><td class='rank_p'>Pontuação</td></td><td class='rank_p'>Acertos</td><td class='rank_p'>Erros</td><td class='rank_p'>Inicio</td><td class='rank_p'>Fim</td>
                    </tr>";
        while ($ranks_g = $rank_geral_bd->fetch_assoc()) {
            echo "
                <tr>
                    <td class='rank'>".$ranks_g["jogador"]."</td><td class='rank_c'>".$ranks_g["pontuacao"]."</td>
                    <td class='rank_c'>".$ranks_g["questao_acerto"]."</td>
                    <td class='rank_c'>".$ranks_g["questao_erro"]."</td>
                    <td class='rank_c'>".$ranks_g["jogada_inicio"]."</td>
                    <td class='rank_c'>".$ranks_g["jogada_fim"]."</td>
                </tr>
            ";
        }
        echo "
            </table>";
}

?>
</body>
</html>