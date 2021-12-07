<?php
    session_start();
    // print_r($_SESSION);
    $nome_jogador = $_SESSION['jogador'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/estilo_tabuleiro.css">
    <title>Jogando a evolução</title>
</head>

<script type="text/javascript">
    function abrirModal(){
        document.getElementById('modal').style.top = "0";
    }
    function fecharModal(){
        document.getElementById('modal').style.top = '-100%';
    }
</script>
<body>
    
<div class="cabecario">
    <p class="titulo">Jogando a evolução</p>
   
    </div>
    <?php
        echo "<h1>Bem vindo ao Jogo ".$nome_jogador."</h1>";
    ?>
    <div id="elemento_pai">
        <div class="posrelativa">
            <img id='stones_img' src="imgs/cien3.gif"  style="position:absolute;" width="100">
    </div>
</div>
<button class="btn2" onclick="abrirModal()">Regras do Jogo</button>

<div class="bg-modal" id="modal">
        <div class="modal">
            <span class="close" onclick="fecharModal()">&times;</span>
                <!-- regras do jogo -->
                <h2>Leia a abaixo a historia e as regras do jogo</h2>
                <!-- <audio src="audio.aac" type="audio/mpeg" autoplay></audio> -->
                <p class="regras">
                A regra do jogo consiste que apenas 3 jogadores possam entra na partida do tabuleiro,
                em seguida ele deve iniciar a partida, respondendo às perguntas, assim, quando ele vai
                respondendo às perguntas certamente, o dado é sorteado é o personagem do jogo movimenta-se
                conforme o valor do dado acumulado referente as perguntas anteriores respondidas corretamente.
                Dessa forma o jogo vai seguindo, com o jogador respondendo às perguntas e o personagem
                movimentando de acordo ao acerto.
                </p>
                <p class="regras">
                Caso o jogador responda todas a perguntas sorteadas para ele, sem o personagem ter chegado
                ao final do tabuleiro, o jogo irá encerrar, então responda às perguntas com atenção. Quando
                você chegar ao final do tabuleiro, a primeira parte do jogo encerrara e irá aparecer um botão
                para você poder acompanhar as classificações dos outros jogadores que entrarão na partida com
                você. Nessa outra página, você irá poder escolher se quer continuar observando a classificação
                dos outros jogadores, ou também começar outra partida, como encerrar a partida na sua máquina.
                </p>
        </div>
    </div>

<form  action = 'jogo.php' method = 'POST'>
        <input class="btn1" type = 'submit' value = 'Começar' name = 'B1'/>
</form>



<?php
error_reporting(0);
 extract($_POST);
 include "DLL.php";
 include "cons.php";
 


echo "<div clas='box'>";
 if(isset($B1)) jogar($server, $user, $password, $db, Null,Null);
 if(isset($B2)) testar($server, $user, $password, $db,$id_da_pergunta,$cont,$pid, $resposta_jogador, $nome_jogador);
 echo "</div>";
 



 ?>

</body>
</html>