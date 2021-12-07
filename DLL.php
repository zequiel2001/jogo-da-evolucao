<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
<?php

//bloco 1 conexão com o banco de dados
Function banco($server, $user, $password, $db, $consulta){
		
		$banco = new mysqli($server, $user, $password, $db);
  $resultado = $banco->query($consulta);
  $banco->close();
		return $resultado;
	
}
//fim do bloco 1

//bloco 2 pega a posição final para o boneco
Function fim($S){
		
	switch ($S) {
    case 1:
        $resultado = 100;
        break;
    case 2:
        $resultado = 200;
        break;
	case 3:        
          $resultado = 300;
          break;
	case 4:       
          $resultado = 400;
          break;
	case 5:
        $resultado = 500;
        break;
    case 6:
        $resultado = 600;
        break;
	case 7:        
          $resultado = 700;
          break;
	case 8:       
          $resultado = 800;
          break;
	case 9:        
          $resultado = 900;
          break;
	case 10:       
          $resultado = 1000;
          break;
    case 11:
        $resultado = 1100;
    break;
    case 12:
        $resultado = 1200;
    break;
    case 13:
        $resultado = 1300;
    break;
    case 14:
        $resultado = 1400;
    break;
    case 15:
        $resultado = 1500;
    break;
    case 16:
        $resultado = 1600;
    break;
    case 17:
        $resultado = 1700;
    break;
    case 18:
        $resultado = 1800;
    break;
    case 19:
        $resultado = 1900;
    break;
    case 20:
        $resultado = 2000;
    break;
    case 21:
        $resultado = 2100;
    break;
    case 22:
        $resultado = 2200;
    break;
    case 23:
        $resultado = 2300;
    break;
    case 24:
        $resultado = 2400;
    break;
    case 25:
        $resultado = 2500;
    break;
    case 26:
        $resultado = 2600;
    break;
    case 27:
        $resultado = 2700;
    break;
    case 28:
        $resultado = 2800;
    break;
 }	
		return $resultado;
}
// fim do bloco 2

//bloco 3 - pega toda a movimentação do boneco
Function position($S){
		
	switch ($S) {
    case 1:
        $resultado = 0;
        break;
    case 2:
        $resultado = 100;
        break;
	case 3:        
          $resultado = 200;
          break;
	case 4:       
          $resultado = 300;
          break;
	case 5:
        $resultado = 400;
        break;
    case 6:
        $resultado = 500;
        break;
	case 7:        
          $resultado = 600;
          break;
	case 8:       
          $resultado = 700;
          break;
	case 9:        
          $resultado = 800;
          break;
	case 10:       
          $resultado = 900;
          break;
    case 11:
        $resultado = 1000;
    break;
    case 12:
        $resultado = 1100;
    break;
    case 13:
        $resultado = 1200;
    break;
    case 14:
        $resultado = 1300;
    break;
    case 15:
        $resultado = 1400;
    break;
    case 16:
        $resultado = 1500;
    break;
    case 17:
        $resultado = 1600;
    break;
    case 18:
        $resultado = 1700;
    break;
    case 19:
        $resultado = 1800;
    break;
    case 20:
        $resultado = 1800;
    break;
    case 21:
        $resultado = 1900;
    break;
    case 22:
        $resultado = 2000;
    break;
    case 23:
        $resultado = 2100;
    break;
    case 24:
        $resultado = 2200;
    break;
    case 25:
        $resultado = 2300;
    break;
    case 26:
        $resultado = 2400;
    break;
    case 27:
        $resultado = 2500;
    break;
    case 28:
        $resultado = 2500;
    break;
    case 29:
        $resultado = 2600;
    break;
    case 30:
        $resultado = 2700;
    break;
    case 31:
        $resultado = 2800;
    break;
 }	
		return $resultado;
}
//fim do bloco 3

//bloco 4 - pega as posições finais e movimentaçao e faz o boneco de mexer
Function direita($x,$S){
	if($S == "certa"){
		        $fim = fim($x);
                // if ($fim >= 1500) $fim = 1500;
          $x_position_l = position($x);
          echo "<script type='application/x-javascript'>
          alert('Vc acertou');
          the_timer=setInterval(do_timer, 20);
          var the_timer, fim = ".$fim.", x_position_l = ".$x_position_l.", the_image;
          
           function do_timer(){

            the_image = document.getElementById('stones_img');
            x_position_l = x_position_l + 1;
            if (x_position_l == fim) {
                clearInterval(the_timer);
            }
            the_image.style.left=x_position_l+'px';
            console.log(x_position_l);
        };
         </script>
         " ;
	}
	if ($S == "errada"){
		        $x_position_l = fim($x);
          $fim =  $x_position_l;
         echo " <script type='application/x-javascript'>
         alert('Vc errou');
         the_timer=setInterval(do_timer, 5);
          var the_timer, fim = ".$fim.", x_position_l = ".$x_position_l.", the_image;
          
           function do_timer(){

            the_image = document.getElementById('stones_img');
            x_position_l = x_position_l + 1;
            if (x_position_l >= fim) {
                clearInterval(the_timer);
               
            }
            the_image.style.left=x_position_l+'px';
            console.log(x_position_l);
        };
         </script>
         ";
	}
}
//fim do bloco 4
// bloco 5 - Testando a resposta do usuario com a do banco e chamando a função jogar() 
function testar($server, $user, $password, $db,$id_da_pergunta,$cont,$pid, $resposta_jogador, $nome_jogador){
   $consulta = "select resposta_certa from evolucao_pergunta where id = $id_da_pergunta limit 1;";
   $result = banco($server, $user, $password, $db, $consulta);
   $linha = $result->fetch_assoc();
   session_start();

   $resp_jogador = strtolower($resposta_jogador);

   if ($linha["resposta_certa"] == $resp_jogador){
        
        if ($cont == NULL){
            $cont = 1;
            $dado_sortedo = rand(1,6);
            $_SESSION['dado'] = $dado_sortedo;
            //iniciando o dado na primeira partida
        }else{
            $cont = $cont + 1;
            $dado_sortedo = rand(1,6);
            $_SESSION['dado'] = $_SESSION['dado'] + $dado_sortedo;
            //acumulando o valor do dado em uma session
        }
        $x = $_SESSION['dado']; //valor do dado acumulando
        direita($x,"certa");
        //chamando a função que movimenta

        //if($cont > 9 && $cont < 15) baixo($cont,"certa");
        echo "
        <div class='um'>
        <div class='bloco1'>
            <p class='ranking'>Ranking de acertos por questoes do jogador ".$nome_jogador.": ".$cont."</p>
            <p class='ranking2'>Casa atual no qual o jogador ".$nome_jogador." esta é ".$x."</p>
            <p class='ranking3'>O dado sorteado é: ".$dado_sortedo."</p>
        </div>
        ";
        //mostrando  ranking o jogador, sua casa e o dado sorteado
        

        
        $pk_id_jogador = $_SESSION['pk_jogador'];
        $ranking = "update evolucao_jogo set pontuacao = ".$x." where jogador_id = ".$pk_id_jogador.";";
        $result7 = banco($server, $user, $password, $db, $ranking);
        //atualizando a pontuação do jogador da tabela jogo

        
        $ranking_prova = "update evolucao_prova set pontuacao  = ".$x.", questao_acerto = '".$cont."' where jogador_id = ".$pk_id_jogador.";";
        $atualiza_prova = banco($server, $user, $password, $db, $ranking_prova);
        //atualizando a pontuação e acertos de questoes do jogador da tabela prova

        if ($x >= 23){
        echo "<script>
                    alert('O jogo foi Finalizado');
                    </script>";
            echo "<p class='finalizado'>O Jogo Foi encerrado!</p>";
            echo "<button class='link'><a href='resultados.php'>Aconpanhar Ranking</a></button>";   
                exit;
            //definindo um limite para o jogador continuar jogando,
        }

        $partida = $_SESSION['ranking'];
        $pontuacoes = "select * from evolucao_jogador, evolucao_jogo where evolucao_jogo.jogador_id = evolucao_jogador.id and partida = ".$partida." ORDER BY pontuacao desc;";
        $result8 = banco($server, $user, $password, $db, $pontuacoes);
        echo "<div class='bloco2'>
                <table class='pontuacoes' border=1>
                    <tr>
                        <td class='rank_p'>Jogador</td><td class='rank_p'>Pontuação</td>
                    </tr>";
        while ($ranks = $result8->fetch_assoc()) {
            echo "
                <tr>
                    <td class='rank'>".$ranks["jogador"]."</td><td class='rank_c'>".$ranks["pontuacao"]."</td>
                </tr>
            ";
        }
        echo "
            </table>
        </div>";
        //Mostrando o ranking do jogador
           
          jogar($server, $user, $password, $db,$cont,$pid);
    }else{
        $x = $_SESSION['dado'];
        $pk_id_jogador1 = $_SESSION['pk_jogador'];
        $_SESSION['erro'] = $_SESSION['erro'] + 1;
        $questao_erro = "update evolucao_prova set questao_erro = '".$_SESSION['erro']."' where jogador_id = ".$pk_id_jogador1.";";
        $quest_erro_bd = banco($server, $user, $password, $db, $questao_erro);

          direita($x,"errada");
          //chamando a função de movimentar, porém com parametro "errada", ou seja, o jogado não ira movimentar
         echo "<p class='errada'>Não foi dessa vez, você errou esta questão<p>";
         jogar($server, $user, $password, $db,$cont,$pid);
    }
}
// fim do bloco 5

//bloco 6 - chamando as perguntas para o usuario responder
function jogar($server, $user, $password, $db, $cont,$pid){

    if ($pid == NULL){
        $pid = 0;                                                  
    }else{							    
        $pid = $pid + 1;												
    }

    if (!isset($_SESSION['prova'])){
        $_SESSION['prova'] = monta_prova();
        //montando o if para verificar se a variavel foi inicializada anteriomente
        //se não for ela entra no if e monta uma nova prova
    }

    if (count($_SESSION['prova']) == $pid) {
        echo "<p class='ranking'>Parabéns! você encerrou o jogo com ".count($_SESSION['prova'])." questões respondidas</p>";
        echo "<p class='finalizado'>O Jogo Foi encerrado, pois as questoes sorteadas foram todas respondidas</p>";
        echo "<button class='link'><a href='resultados.php'>Aconpanhar Ranking</a></button>";
        exit;
        //chamando uma nova função onde dentro dela um vetor com um conjunto de de ids de perguntas que ainda não 
        //foi sorteada com com base em outra tabela, ou seja, o sql
        

    };
   //Usando uma visao  
   $consulta = "select * from vw_evolucao_perguntas where id = ".$_SESSION['prova'][$pid];
   //inserindo as perguntas sorteadas em uma tabela                 
    //$consulta2 = "insert into pergunta_sorteada (valores) values (".$prova[$pid].");"; 
    //$result2 = banco($server, $user, $password, $db, $consulta2);
   $result = banco($server, $user, $password, $db, $consulta);
   $resposta = 1;
   $linha = $result->fetch_assoc();
   echo "<br>";
   echo "
   <div class='formulario'>
       <form  action = 'jogo.php' method = 'POST'>
           <p class='alternativa1'>Número da Questão: ".$linha["id"]."</p> 
           <p class='alternativa2'>Assunto: ".$linha["assunto"]."</p>
           <p class='alternativa3'>Dificuldade: ".$linha["dificuldade"]."</p>
           <p class='alternativa'>".$linha["questao"]."</p>
           <p class='alternativa'>".$linha["resposta1"]."</p>
           <p class='alternativa'>".$linha["resposta2"]."</p>
           <p class='alternativa'>".$linha["resposta3"]."</p>
           <p class='alternativa'>".$linha["resposta4"]."</p>
           <input type = hidden name = 'cont' value =".$cont.">
           <input type = hidden name = 'pid' value =".$pid.">
           <input type = hidden name = 'id_da_pergunta' value =".$linha["id"].">
           <p class='alternativa'>Digita a letra da resposta certa:</p>
           <input class='resp_jog' type ='text' name = 'resposta_jogador' value =''>
           <input class='btn3' type = 'submit' value = 'Testar' name = 'B2'/>
       </form>
    </div>
   ";
}
//fim do bloco 6



function monta_prova(){
    session_start();
    $jogador = $_SESSION['pk_jogador'];
    include("config.php");
    $inicio_partida = date('d/m/Y H:i');
    if (!$conexao->multi_query("CALL evolucao_sorteia_pergunta(20, 10, ".$jogador.", '".$inicio_partida."');")) {
        echo "<p class='finalizado'>Erro ao fazer o sorteio das perguntas(" . $conexao->errno . ")</p>" . $conexao->error;
    }
    do{
        if ($res = $conexao->store_result()) {
            $i = 0;
            while ($ranks = $res->fetch_assoc()) {
                $c[$i] = $ranks["id"];
                $i ++;
            }
        } 
    }while ($conexao->more_results() && $conexao->next_result());
    return $c;
}
?>
</body>

</html>