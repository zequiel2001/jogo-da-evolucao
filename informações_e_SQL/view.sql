create view vw_evolucao_perguntas as
select evolucao_pergunta.id, questao, resposta1, resposta2, resposta3, resposta4, evolucao_assunto.nome as assunto, evolucao_dificuldade.nome as dificuldade
from evolucao_pergunta, evolucao_assunto, evolucao_dificuldade
where evolucao_pergunta.assunto_id = evolucao_assunto.id and evolucao_pergunta.dificuldade_id = evolucao_dificuldade.id;