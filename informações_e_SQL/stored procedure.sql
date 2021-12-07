DELIMITER $$
create procedure evolucao_sorteia_pergunta (
	IN qtde_perguntas_a_sortear int,
	IN n_ultimas_perguntas_sorteadas int,    
	IN jogador_teste int,
    IN data_inicio varchar(30)
    
)
Begin    
	Start transaction;
    
    #1o passo: criamos uma tabela temporária com as últimas questões de rel_prova_pergunta
    drop table if exists ultimas_perguntas; 
	create temporary table ultimas_perguntas as (select pergunta_id from evolucao_rel_prova_pergunta order by id desc limit n_ultimas_perguntas_sorteadas);    
    
	#2o passo: sorteamos perguntas que não estão entre as últimas já sorteadas
    drop table if exists perguntas_sorteadas;
    create temporary table perguntas_sorteadas as (select * from evolucao_pergunta
		where id not in (select pergunta_id from ultimas_perguntas)
		order by rand() limit qtde_perguntas_a_sortear);
	    
	#3o passo: cadastramos uma prova para o jogador
    insert into evolucao_prova (jogador_id, jogada_inicio) values (jogador_teste, data_inicio);
    
    #4o passo: pegamos o id da nova prova e o colomanos numa variável
    select @id_ultima_prova := id from evolucao_prova order by id desc limit 1;
    
    #5o passo: incluimos os ids da nova prova e das perguntas sorteadas em um rel_prova_pergunta
    insert into evolucao_rel_prova_pergunta (prova_id, pergunta_id) select @id_ultima_prova, id from perguntas_sorteadas;
    
    #6o passo: associamos perguntas_sorteadas com os respectivos assuntos e dificuldades
    select id from perguntas_sorteadas order by id;
        
	commit;
end $$
DELIMITER ;