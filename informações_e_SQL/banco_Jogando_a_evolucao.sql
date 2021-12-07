-- phpMyAdmin SQL Dump
-- version 4.3.7
-- http://www.phpmyadmin.net
--
-- Host: mysql22-farm10.kinghost.net
-- Tempo de geração: 03/12/2021 às 10:49
-- Versão do servidor: 10.5.12-MariaDB-log
-- Versão do PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `mps`
--

DELIMITER $$
--
-- Procedimentos
--
$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `agenda`
--



-- --------------------------------------------------------

--
-- Estrutura para tabela `ANKARA_assunto`
--


--
-- Estrutura para tabela `evolucao_assunto`
--

CREATE TABLE IF NOT EXISTS `evolucao_assunto` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `evolucao_assunto`
--

INSERT INTO `evolucao_assunto` (`id`, `nome`) VALUES
(3, 'biologia'),
(4, 'história'),
(5, 'conhecimento gerais'),
(6, 'modernidade');

-- --------------------------------------------------------

--
-- Estrutura para tabela `evolucao_dificuldade`
--

CREATE TABLE IF NOT EXISTS `evolucao_dificuldade` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `evolucao_dificuldade`
--

INSERT INTO `evolucao_dificuldade` (`id`, `nome`) VALUES
(1, 'fácil'),
(2, 'regular'),
(3, 'difícil');

-- --------------------------------------------------------

--
-- Estrutura para tabela `evolucao_historico_login`
--

CREATE TABLE IF NOT EXISTS `evolucao_historico_login` (
  `id` int(11) NOT NULL,
  `data_hora_login` varchar(45) DEFAULT NULL,
  `data_hora_logout` varchar(45) DEFAULT NULL,
  `jogador_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `evolucao_historico_login`
--

INSERT INTO `evolucao_historico_login` (`id`, `data_hora_login`, `data_hora_logout`, `jogador_id`) VALUES
(1, '28/11/2021 21:33', '01/12/2021 09:55', 1),
(2, '28/11/2021 11:05', '01/12/2021 09:55', 1),
(3, '28/11/2021 11:12', '02/12/2021 01:52', 5),
(4, '28/11/2021 09:43', '30/11/2021 01:02', 3),
(5, '28/11/2021 09:45', '30/11/2021 01:02', 3),
(6, '28/11/2021 09:46', '01/12/2021 09:55', 1),
(7, '29/11/2021 12:10', '01/12/2021 09:55', 1),
(8, '29/11/2021 12:49', '01/12/2021 09:55', 1),
(9, '29/11/2021 02:58', '01/12/2021 09:55', 1),
(10, '30/11/2021 01:12', '01/12/2021 09:55', 1),
(11, '30/11/2021 02:39', '02/12/2021 01:52', 5),
(12, '30/11/2021 02:42', '02/12/2021 01:52', 5),
(13, '30/11/2021 02:55', '02/12/2021 01:52', 5),
(14, '30/11/2021 03:08', '02/12/2021 01:52', 5),
(15, '30/11/2021 03:25', '01/12/2021 09:55', 1),
(16, '30/11/2021 12:55', '30/11/2021 01:02', 3),
(17, '30/11/2021 09:37', '30/11/2021 09:39', 9),
(18, '30/11/2021 09:37', '30/11/2021 09:40', 10),
(19, '30/11/2021 09:53', '0', 11),
(20, '30/11/2021 09:55', '0', 11),
(21, '30/11/2021 10:05', '30/11/2021 10:07', 8),
(22, '01/12/2021 12:52', '01/12/2021 09:55', 1),
(23, '30/11/2021 09:14', '30/11/2021 09:20', 12),
(24, '01/12/2021 01:16', '02/12/2021 01:52', 5),
(25, '01/12/2021 08:54', '01/12/2021 09:55', 1),
(26, '01/12/2021 09:12', '02/12/2021 01:52', 5),
(27, '01/12/2021 09:28', '0', 3),
(28, '01/12/2021 09:51', '01/12/2021 09:55', 1),
(29, '01/12/2021 03:06', '0', 1),
(30, '01/12/2021 03:09', '02/12/2021 01:52', 5),
(31, '01/12/2021 03:11', '02/12/2021 01:52', 5),
(32, '02/12/2021 01:16', '0', 13),
(33, '02/12/2021 01:43', '02/12/2021 01:52', 5),
(34, '02/12/2021 07:45', '0', 17);

-- --------------------------------------------------------

--
-- Estrutura para tabela `evolucao_jogador`
--

CREATE TABLE IF NOT EXISTS `evolucao_jogador` (
  `id` int(11) NOT NULL,
  `jogador` varchar(45) NOT NULL,
  `senha` text NOT NULL,
  `ativo` text NOT NULL,
  `logado` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `evolucao_jogador`
--

INSERT INTO `evolucao_jogador` (`id`, `jogador`, `senha`, `ativo`, `logado`) VALUES
(1, 'Ezequiel', 'bW90YTIwMjA=', 'S', 'online'),
(3, 'evelin', 'bW90YTIwMjA=', 'S', 'online'),
(4, 'Thiago', 'bW90dGEyMDIw', 'S', 'online'),
(5, 'josue', 'bW90YTIwMjA=', 'S', 'online'),
(6, 'kaique', 'bW90YTIwMjA=', 'S', 'online'),
(7, 'marco', 'bW90YTIwMjA=', '', ''),
(8, 'gostoso', 'bW90YTIwMjA=', 'S', 'online'),
(9, 'dani linda', 'ZGFueW1hdWg=', 'S', 'online'),
(10, 'Thiago Lindo', 'MTIzMQ==', 'S', 'online'),
(11, 'Enzzo123', 'MTIzNDU2', 'S', 'online'),
(12, 'KAique ', 'MTIzNDU2', 'S', 'online'),
(13, 'nathilinda', 'cGluYWNhcmxhMQ==', 'S', 'online'),
(14, 'Debora ', 'MjcwMzEw', '', ''),
(15, 'Debora ', 'MjcwMzEw', '', ''),
(16, 'Debora Andrade', 'TGFyYTI3MDM=', '', ''),
(17, 'DÃ©bora andrade', 'TGFyYTI3MDMxMA==', 'S', 'online');

-- --------------------------------------------------------

--
-- Estrutura para tabela `evolucao_jogo`
--

CREATE TABLE IF NOT EXISTS `evolucao_jogo` (
  `id` int(11) NOT NULL,
  `data_hora_inicio` varchar(45) DEFAULT NULL,
  `data_hora_termino` varchar(45) DEFAULT NULL,
  `partida` int(100) NOT NULL,
  `jogador_id` int(11) NOT NULL,
  `pontuacao` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `evolucao_jogo`
--

INSERT INTO `evolucao_jogo` (`id`, `data_hora_inicio`, `data_hora_termino`, `partida`, `jogador_id`, `pontuacao`) VALUES
(123, NULL, NULL, 1, 1, 18),
(126, NULL, NULL, 1, 13, 2),
(128, NULL, NULL, 1, 17, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `evolucao_pergunta`
--

CREATE TABLE IF NOT EXISTS `evolucao_pergunta` (
  `id` int(11) NOT NULL,
  `questao` text NOT NULL,
  `resposta1` text NOT NULL,
  `resposta2` text NOT NULL,
  `resposta3` text NOT NULL,
  `resposta4` text DEFAULT NULL,
  `resposta_certa` varchar(1) DEFAULT NULL,
  `assunto_id` int(11) DEFAULT NULL,
  `dificuldade_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `evolucao_pergunta`
--

INSERT INTO `evolucao_pergunta` (`id`, `questao`, `resposta1`, `resposta2`, `resposta3`, `resposta4`, `resposta_certa`, `assunto_id`, `dificuldade_id`) VALUES
(18, 'O ambiente afeta a forma e a organização dos animais, isto é, quando o ambiente se torna muito diferente, produz ao longo do tempo modificações correspondentes na forma e organização dos animais... As cobras adotaram o hábito de se arrastar no solo e se esconder na grama; de tal maneira que seus corpos, como resultados de esforços repetidos de se alongar, adquiriram comprimento considerável...”. O trecho citado foi transcrito da obra Filosofia Zoológica de um famoso cientista evolucionista. Assinale a alternativa que contém, respectivamente, a ideia transmitida pelo texto e o nome do seu autor.', 'a) Seleção natural – Charles Darwin.', 'b) Seleção artificial – Charles Darwin.', 'c) Lei do transformismo – Jean Lamarck.', 'd) Herança das características dominantes – Alfred Wallace.', 'c', 3, 2),
(19, 'O tema ‘‘teoria da evolução’’ tem provocado debates em certos locais dos Estados Unidos da América, com algumas entidades contestando seu ensino nas escolas. Nos últimos tempos, a polêmica está centrada no termo teoria, que, no entanto, tem um significado bem definido para os cientistas. Sob o ponto de vista da ciência, teoria é ', 'a) sinônimo de lei científica, que descreve regularidades de fenômenos naturais, mas não permite fazer previsões sobre eles. ', 'b) sinônimo de hipótese, ou seja, uma suposição ainda sem comprovação experimental. ', 'c) uma ideia sem base em observação e experimentação, que usa o senso comum para explicar fatos do cotidiano. ', 'd) uma ideia, apoiada pelo conhecimento científico, que tenta explicar fenômenos naturais relacionados, permitindo fazer previsões sobre eles. ', 'd', 3, 2),
(20, 'Um elemento essencial para a evolução da dieta humana foi a transição para a agricultura como o modo primordial de subsistência. A Revolução Neolítica estreitou dramaticamente o nicho alimentar ao diminuir a variedade de mantimentos disponíveis; com a virada para a agricultura intensiva, houve um claro declínio na nutrição humana. Por sua vez, a industrialização recente do sistema alimentar mundial resultou em uma outra transição nutricional, na qual as nações em desenvolvimento estão experimentando, simultaneamente, subnutrição e obesidade.  A respeito dos resultados das transformações nos sistemas alimentares descritas acima, é correto ', 'a) A quantidade absoluta de mantimentos disponíveis para as sociedades humanas diminuiu após a Revolução Neolítica. ', 'b) A invenção da agricultura, ao diversificar a cesta de mantimentos, melhorou o balanço nutricional das sociedades sedentárias. ', 'c) Os ganhos de produtividade agrícola obtidos com as revoluções Neolítica e Industrial trouxeram simplificação das dietas alimentares. ', 'd) A dieta humana pouco variou ao longo do tempo, mantendo-se inalterada da Revolução Neolítica à Revolução Industrial. ', 'c', 4, 2),
(21, 'Na Pré-História, o homem já criava animais, cultivava o solo e dispunha de objetos de metais, tais como lanças, ferramentas e machados. (Adaptado de: acessado em: fev. 2007.)  Com base nessas informações, foram formuladas algumas hipóteses. Escolha, na relação a seguir, as hipóteses compatíveis com aquela época.  I. Houve domesticação e cultivo de plantas.  II. Ocorreu melhoria na alimentação e na qualidade de vida das pessoas.  III. Os alimentos eram transportados por navios.  IV. A vida nômade teve início.  É correto afirmar apenas em ', 'a) I e II.', 'b) II e III.', 'c) III e IV.', 'd) I, II e III.', 'a', 4, 1),
(22, '"Todo sistema cultural tem a sua própria lógica e não passa de um ato primário de etnocentrismo tentar transferir a lógica de um sistema para outro."  LARAIA, ROQUE CULTURA, UM CONCEITO ANTROPOLÓGICO, 8. ED, RIO DE JANEIRO JORGE ZAHAR, 1993.   Considerando o texto acima, marque a alternativa correta acerca das afirmações abaixo.  I - As sociedades tribais são tão eficientes para produzir cultura quanto qualquer outra, mesmo quando não possuem certos recursos culturais presentes em outras culturas.  II - As sociedades selvagens são capazes de produzir cultura, mas estão mal adaptadas ao meio ambiente e, por isso, algumas nem sequer possuem o Estado.  III - As chamadas sociedades indígenas são dotadas de recursos materiais e simbólicos eficientes para produzir cultura como qualquer outra, faltando-lhes apenas uma linguagem própria.  IV - As chamadas sociedades primitivas conseguiram produzir cultura plenamente, ao longo do processo evolutivo, quando instituíram o Estado e as instituições escolares. ', 'a) I e II estão corretas.', 'b) Apenas I está correta.', 'c) I e III estão corretas.', 'd) I e IV estão corretas.', 'b', 4, 1),
(23, 'Os metais, explorados desde a Idade do Bronze, são muito utilizados até hoje, por exemplo, na aeronáutica, na eletrônica, na comunicação, na construção civil e na indústria automobilística.  Sobre os metais, pode-se afirmar que são ', 'a) bons condutores de calor e de eletricidade, assim como os não-metais. ', 'b) materiais que se quebram com facilidade, característica semelhante aos cristais. ', 'c) materiais que apresentam baixo ponto de fusão, tornando-se líquidos na temperatura ambiente. ', 'd) maleáveis, transformando-se em lâminas, por exemplo, quando golpeados ou submetidos a rolo compressor.', 'd', 5, 1),
(24, 'Na Pré-História encontramos fases do desenvolvimento humano. Qual a alternativa que apresenta características das atividades do homem na fase neolítica - também conhecido como o período da “Pedra Polida”? ', 'a) Os homens aprenderam a controlar o fogo.', 'b) Os homens conheciam uma economia comercial e já praticavam os juros. ', 'c) Os homens praticavam uma economia coletora de alimentos. ', 'd) Os homens cultivavam plantas e domesticavam animais, tornando-se produtores de alimentos.', 'd', 4, 1),
(25, 'Em Biologia, a evolução pode ser definida como', 'a) Exclusivamente a alteração da fisionomia de um ser vivo.', 'b) Modificação e adaptação das espécies ao longo do tempo.', 'c) Desenvolvimento das espécies em ambientes inóspitos.', 'd) Transformação da composição química de um ser vivo.', 'b', 3, 1),
(26, 'Na Biologia, a evolução é definida como o processo de modificações em gerações sucessivas de uma espécie. Pela teoria da evolução, as espécies evoluem porque mudam com o passar do tempo e as características podem ser afetadas por haver variação genética. Fatores que contribuem para o aumento da variedade genética são:', 'a) processos induzidos por fatores externos', 'b) Cruzamento entre espécies e alimentação', 'c) Mutação e recombinação gênica', 'd) Mudanças climáticas e relações interespecíficas', 'c', 3, 1),
(27, 'O estudo da história evolutiva do homem, assim como da história de vida de outras espécies, é complexo e cheio de lacunas, uma vez que o trabalho é feito basicamente com fósseis, que nem sempre estão bem preservados. O esqueleto mais antigo encontrado no Brasil da espécie Homo sapiens viveu há cerca de 11 mil anos e é conhecido pelo nome de:', 'a) Helena.', 'b) Luzia.', 'c) Naia.', 'd) Lucy.', 'b', 5, 2),
(31, '(UFSCar-2001) “O meio ambiente cria a necessidade de uma determinada estrutura em um organismo. Este se esforça para responder a essa necessidade. Como resposta a esse esforço, há uma modificação na estrutura do organismo. Tal modificação é transmitida aos descendentes.” O texto sintetiza as principais idéias relacionadas ao', 'a) fixismo.', 'b) darwinismo.', 'c) criacionismo.', 'd) lamarckismo. ', 'a', 5, 1),
(32, '(UFSCar-2000) Considere as três frases abaixo. I. Duas populações de uma mesma espécie, vivendo em ambientes diferentes e isoladas geograficamente, terão obrigatoriamente o mesmo conjunto gênico. II. A condição inicial básica para que ocorra o processo de formação de raças é o isolamento geográfico. III. O critério que melhor distingue duas espécies entre si é o das dessemelhanças fisiológicas e bioquímicas. Indique a alternativa correta, quanto ao conteúdo das frases. ', 'a) II.', 'b) I, II e III.', 'c) I e II.', 'd) I e III.', 'a', 5, 2),
(33, '(PUC-RS-2001) Quais dos cientistas abaixo deram as maiores contribuições para o desenvolvimento da teoria da evolução? ', 'a) Mendel, Newton e Darwin. ', 'b) Lineu, Aristóteles e Wallace.', 'c) Lamarck, Darwin e Lavoisier.', 'd) Darwin, Wallace e Lamarck.', 'a', 5, 1),
(34, '(PUC-RJ-2002) "A capacidade de errar ligeiramente é a verdadeira maravilha do DNA. Sem esse atributo especial, seríamos ainda bactéria anaeróbia, e a música não existiria (...). Errar é humano, dizemos, mas a ideia não nos agrada muito, e é mais difícil ainda aceitar o fato de que errar é também biológico" (Lewis Thomas. A medusa e a lesma, ed. Nova Fronteira, RJ, 1979). Esse texto refere-se a uma característica dos seres vivos. É ela:', 'a) seleção natural. ', 'b) reprodução. ', 'c) excitabilidade. ', 'd) mutação.', 'a', 5, 3),
(35, '(Unifesp-2002) Considere as quatro afirmações seguintes. \nI. As mutações são alterações que ocorrem nos organismos sempre que o ambiente se torna desfavorável. \nII. A seleção natural privilegia características determinadas por genes dominantes. III. As migrações e as modificações ambientais são fatores que alteram as frequências genéticas das populações. \nIV. A recombinação genética amplia a variabilidade existente em uma população de reprodução sexuada. Das afirmações apresentadas, são corretas: \n', 'a) I e III. ', 'b) I e IV. ', 'c) II e III. ', 'd) III e IV', 'c', 5, 2),
(36, '(Vunesp-2002) Considere o processo evolutivo do ser humano e assinale a alternativa que corresponde à hipótese, hoje mais aceita, sobre a relação entre as mudanças de hábitos alimentares e o tamanho dos dentes no Homo sapiens.', 'a) Os dentes menores foram selecionados de acordo com a mudança alimentar, de herbívoro para carnívoro. ', 'b) Não é possível estabelecer nenhuma relação, pois, ao adquirir a postura ereta, mãos e braços ficam livres para lutar, diminuindo a importância da mandíbula e dos dentes. ', 'c) O uso do fogo para cozinhar alimentos, tornando-os mais moles, contribuiu para diminuir o tamanho dos dentes. ', 'd) O uso do fogo não foi importante, pois o homem conseguiu moldar as formas dos dentes de acordo com o consumo de alimentos de baixa caloria. ', 'c', 5, 3),
(37, '(Fatec-2002) A teoria sintética ou teoria moderna da evolução considera três fatores evolutivos principais, que são: ', 'a) uso e desuso, transmissão das características adquiridas e seleção natural. ', 'b) uso e desuso, seleção natural e migração. ', 'c) mutação gênica, uso e desuso e migração. ', 'd) mutação gênica, recombinação gênica e seleção natural.', 'b', 5, 3),
(38, '(UECE-2002) Considerando a evolução da espécie Homo sapiens, são órgãos vestigiais presentes no corpo humano: ', 'a) músculos, vértebra coccígea e dentes caninos. ', 'b) mamilo do macho, fíbula e apêndice.  ', 'c) segmentação da musculatura abdominal, membrana nictitante e amídalas. ', 'd) músculos da orelha, dentes do siso e pelos do corpo. ', 'd', 5, 2),
(39, '(ENEM-2007) Fenômenos biológicos podem ocorrer em diferentes escalas de tempo. Assinale a opção que ordena exemplos de fenômenos biológicos, do mais lento para o mais rápido. ', 'a) germinação de uma semente, crescimento de uma árvore, fossilização de uma samambaia ', 'b) fossilização de uma samambaia, crescimento de uma árvore, germinação de uma semente ', 'c) crescimento de uma árvore, germinação de uma semente, fossilização de uma samambaia ', 'd) fossilização de uma samambaia, germinação de uma semente, crescimento de uma árvore ', 'b', 5, 1),
(40, '(UFMG-2007) Comportamentos que favorecem a dispersão também promovem, geralmente, a especiação. É CORRETO afirmar que, entre os comportamentos que costumam favorecer a especiação, se inclui ', 'a) a ocupação de novos nichos. ', 'b) a territorialidade. ', 'c) o cuidado com a prole. ', 'd) o sedentarismo.', 'a', 5, 2),
(41, '(ETEs-2007) Para que melhor possamos compreender a evolução do tempo na história da Terra e da humanidade, Francis Crick, ganhador do prêmio Nobel pela descoberta da estrutura do DNA, propõe comparar a idade do nosso planeta à duração de uma semana: “Usando essa escala de tempo, a idade do universo, partindo do big bang inicial, seria de, aproximadamente, duas ou três semanas. Os mais antigos fósseis macroscópicos (do início do período Cambriano) teriam apenas um dia de vida. O homem moderno teria aparecido nos últimos dez segundos, e a agricultura nos últimos dois segundos. Ulisses teria vivido apenas até meio segundo atrás.” Assinale a alternativa que contém uma interpretação válida do texto. ', 'a) Na escala de tempo utilizada, a idade da Terra é inferior a três e superior a duas semanas. ', 'b) A agricultura se iniciou com o advento dos primatas, contemporâneos do homem moderno. ', 'c) A Idade Contemporânea, na história, corresponde ao penúltimo segundo da “semana”, durante o qual viveu Ulisses, herói mitológico grego', 'd) O homem moderno citado é o Homo sapiens sapiens e não o que viveu no período denominado de Idade Moderna, pelos historiadores.', 'd', 5, 3),
(42, '(UNIFESP-2007) De acordo com a teoria da evolução biológica, os seres vivos vêm se modificando gradualmente ao longo das gerações, desde o seu surgimento na Terra, em um processo de adaptação evolutiva. Segundo essa teoria:', 'a) os indivíduos mais bem adaptados transmitem as características aos descendentes. ', 'b) ocorre a seleção de características morfológicas adquiridas pelo uso freqüente. ', 'c) a seleção natural apenas elimina aqueles indivíduos que sofreram mutação. ', 'd) as mutações são dirigidas para genes específicos que proporcionam maior vantagem aos seus portadores.', 'a', 5, 2),
(43, '(PUC-RS-2000) Nos primórdios da vida em nosso planeta, ocorreram dois fatos que se encontram intimamente relacionados. São eles:', 'a) quimiossíntese e aparecimento dos vírus.  ', 'b) formação dos mares e extinção dos anaeróbios', 'c) fotossíntese e vida aeróbia', 'd) formação de argilas e origem das algas. ', 'c', 5, 2),
(44, '(VUNESP-2006) Pode-se dizer que os pêlos estão para as penas assim como...', 'a) as asas de um morcego estão para as asas de uma ave, sendo essas estruturas consideradas homólogas. ', 'b) as asas de um inseto estão para as asas de um morcego, sendo essas estruturas consideradas homólogas. ', 'c) as unhas estão para os dedos, sendo essas estruturas consideradas homólogas. ', 'd) as pernas de um cavalo estão para as pernas de um inseto, sendo essas estruturas consideradas análogas.  ', 'a', 5, 3),
(45, 'Existem várias evidências que sustentam o fato de que a evolução aconteceu e acontece nos dias atuais. Dentre elas, podemos citar os fósseis, que são restos ou vestígios preservados da existência de organismos que viveram no passado. A respeito dos fósseis, marque a alternativa incorreta:', 'a) Os fósseis evidenciam que, há milhares de anos, as espécies existentes eram diferentes das atuais.', 'b) Através dos fósseis, é possível observar claramente a evolução de cada espécie, pois não há falhas no registro fóssil. ', 'c) Com o uso dos fósseis, é possível até mesmo entender as condições climáticas da época em que aquele organismo viveu. ', 'd) Para descobrir a idade de um fóssil, muitos pesquisadores utilizam o método de datação com carbono 14.', 'b', 5, 1),
(46, 'Sabemos que a seleção natural é um ponto importante da teoria criada por Charles Darwin. Marque a alternativa incorreta a respeito da ideia de seleção natural:', 'a) Segundo a teoria da seleção natural, o mais forte sobrevive.', 'b) Segundo Darwin, os organismos estão constantemente lutando pela sobrevivência e apenas os mais aptos sobrevivem. ', 'c) Os seres mais aptos possuem maior chance de reproduzir-se e deixar descendentes. ', 'd) Superbactérias são um exemplo clássico de seleção natural.', 'a', 3, 1),
(47, '(Mackenzie-SP) A teoria moderna da evolução, ou teoria sintética da evolução, incorpora os seguintes conceitos à teoria original proposta por Darwin', 'a) mutação e seleção natural.', 'b) mutação e adaptação.', 'c) mutação e recombinação gênica.', 'd) recombinação gênica e seleção natural.', 'c', 3, 3),
(48, 'Quando falamos em evolução, referimo-nos às mudanças que os organismos sofrem através do tempo. Diversos pesquisadores tiveram ideias evolucionistas; outros, no entanto, acreditavam que organismos eram imutáveis. Todos os nomes abaixo se referem a evolucionistas, exceto:', 'a) Lamarck.', 'b) Darwin.', 'c) Wallace.', 'd) Aristóteles.', 'd', 3, 2),
(49, 'A seleção natural configura-se como o principal conceito dentro da teoria da evolução proposta por Darwin. Observe as alternativas abaixo e marque aquela que indica corretamente a ideia de seleção natural.', 'a) Os organismos mais fortes sobrevivem e transmitem essa característica para os seus descendentes.', 'b)  organismos mais fortes conseguem reproduzir-se e impedir a reprodução dos mais fracos.', 'c) Os organismos mais aptos são selecionados pelo meio e todos os organismos mais fracos são extintos.', 'd)Os organismos mais aptos a sobreviver no ambiente apresentam maior chance de reprodução e transmissão da característica vantajosa para os seus descendentes.', 'd', 3, 2),
(50, 'A seleção natural configura-se como o principal conceito dentro da teoria da evolução proposta por Darwin. Observe as alternativas abaixo e marque aquela que indica corretamente a ideia de seleção natural.', 'a) Os organismos mais fortes sobrevivem e transmitem essa característica para os seus descendentes.', 'b)  organismos mais fortes conseguem reproduzir-se e impedir a reprodução dos mais fracos.', 'c) Os organismos mais aptos são selecionados pelo meio e todos os organismos mais fracos são extintos.', 'd)Os organismos mais aptos a sobreviver no ambiente apresentam maior chance de reprodução e transmissão da característica vantajosa para os seus descendentes.', 'd', 3, 2),
(51, '(Mack-2002) Considere as seguintes ocorrências nos seres vivos. I. Reprodução assexuada II. Autofecundação III. Predatismo IV. Competição V. Mutação. São favoráveis para a ocorrência de evolução, apenas:', 'a) I e II.', 'b) III e IV.', 'c) IV e V.', 'd) III, IV e V.', 'd', 3, 1),
(52, 'Assinale a alternativa que NÃO contém um mecanismo de evolução biológica segundo a teoria do neodarwinismo.', 'a) Mutação', 'b) Deriva genética', 'c) Seleção natural', 'd) Mimetismo', 'd', 3, 1),
(53, 'O conhecimento sobre a origem da variabilidade entre os indivíduos, sobre os mecanismos de herança dessa variabilidade e sobre o comportamento dos genes nas populações foi incorporado à teoria da evolução biológica por seleção natural de Charles Darwin. Diante disso, considere as seguintes afirmativas: I. A seleção natural leva ao aumento da frequência populacional das mutações vantajosas num dado ambiente; caso o ambiente mude, essas mesmas mutações podem tornar seus portadores menos adaptados e, assim, diminuir de frequência. II. A seleção natural é um processo que direciona a adaptação dos indivíduos ao ambiente, atuando sobre a variabilidade populacional gerada de modo casual. III. A mutação é a causa primária da variabilidade entre os indivíduos, dando origem a material genético novo e ocorrendo sem objetivo adaptativo. Está correto o que se afirma em:', 'a) I, II e III.', 'b) I e III, apenas.', 'c) I e II, apenas', 'd) I, apenas', 'a', 3, 3),
(54, '(VUNESP 2009) Asas de morcegos e asas dos insetos têm origens embrionárias totalmente diferentes. Assim, durante a evolução, a adaptação pode levar organismos pouco aparentados a desenvolver estruturas e formas corporais semelhantes. Trata-se de um caso de:', 'a) Convergência evolutiva.', 'b) Divergência evolutiva.', 'c) Seleção artificial.', 'd) Lei do uso e desuso', 'a', 3, 3),
(55, '(Enem 2014) Embora seja um conceito fundamental para a biologia, o termo "evolução" pode adquirir dignificados diferentes do senso comum. A ideia de que a espécie humana é o ápice do processo evolutivo é amplamente difundida, mas não é compartilhada por muitos cientistas.\nPara esses cientistas, a compreensão do processo citado baseia-se na ideia de que os seres vivos, ao longo do tempo, passam por:', 'a) Modificação de características.', 'b) Incremento no tamanho corporal', 'c) Complexificação de seus sistemas.', 'd) Melhoria de processos e estruturas.', 'a', 3, 3),
(56, '(UDESC 2018/2) O “Abominável Mistério” de Darwin teve uma hipótese alternativa proposta por Gaston de Saporta, a qual foi confirmada pela ampliação do conhecimento dos registros fósseis e estudos moleculares. Sabe-se, hoje, que muitas angiospermas e muitos insetos tiveram um processo evolutivo conjunto. Esse tipo de evolução em que duas espécies evoluem em conjunto é denominado:', 'a) Coevolução.', 'b) Evolução Simpátrica.', 'c) Evolução Alopátrica.', 'd) Evolução Divergente.', 'a', 3, 3),
(57, '2 + 1 + 2', '3', '1', '4', '5', 'd', 3, 1),
(58, '(PISM) O crescimento de uma população é resultante da natalidade, da  mortalidade e de migrações. Comparando a dinâmica de uma população animal (borboleta  da espécie Agraulis vanilla) à de uma população vegetal (ipê amarelo Tabebuia alba),  temos como alternativa INCORRETA, no que se refere à taxa de mortalidade por predação:', 'a) Em ambas as populações, é variável de acordo com seus ciclos de vida.', 'b) Em ambas as populações, pode variar de acordo com a época do ano', 'c) Na população de borboleta, é maior nas primeiras etapas do ciclo de vida', 'd) Na população de ipê, sempre será constante, pois seus indivíduos não conseguem fugir (locomover) de seus predadores. ', 'd', 3, 2),
(60, '(UFC-CE) As esponjas desempenham papéis importantes em muitos habitats marinhos. A natureza porosa das esponjas as torna uma habitação ideal para vários crustáceos, equinodermos e vermes marinhos. Além disso, alguns caramujos e crustáceos têm, tipicamente, esponjas grudadas em suas conchas e carapaças, tornando-os imperceptíveis aos predadores. Nesse caso, a esponja se beneficia por se nutrir de partículas de alimento liberadas durante a alimentação de seu hospedeiro. As relações ecológicas presentes no texto são:', 'a) Protocooperação e competição.', 'b) Inquilinismo e protocooperação.', 'c) Inquilinismo e parasitismo.', 'd) Competição e predação.', 'b', 3, 2),
(61, '(Unama-PA) Os casos locais de raiva humana no Pará ocorrem, basicamente, por transmissão de morcegos hematófagos, os quais transmitem os agentes causadores da doença ao homem. A situação que existe entre os referidos seres e o homem é um típico exemplo de relação', 'a) Interespecífica do tipo predatismo.', 'b) Interespecífica do tipo parasitismo', 'c) Intraespecífica do tipo canibalismo.', 'd) Intraespecífica do tipo competição. ', 'b', 3, 2),
(62, '(UFPI-adaptada) Dos tipos de relações ecológicas seguintes, o único que ocorre exclusivamente entre organismos da mesma espécie é:', 'a) Inquilinismo', 'b) Herbivoria', 'c) Mutualismo', 'd) Sociedade', 'd', 3, 2),
(63, '(Fatec-SP) Abelhas apresentam três castas sociais: as operárias, fêmeas estéreis que realizam o trabalho da colmeia, a rainha e o zangão, encarregados da reprodução. Essa divisão de trabalho caracteriza:', 'a) Sociedade isomorfa com relações intraespecíficas harmônicas', 'b) Sociedade heteromorfa com relações intraespecíficas harmônicas', 'c) Colônia heteromorfa com relações interespecíficas harmônicas', 'd) Colônia isomorfa com relações interespecíficas harmônicas', 'b', 3, 2),
(64, '(Cesgranrio- RJ) Se duas espécies diferentes ocuparem num mesmo ecossistema o mesmo nicho ecológico, é provável que:', 'a) Se estabeleça entre elas uma relação harmônica.', 'b) Se estabeleça uma competição interespecífica.', 'c) Se estabeleça uma competição intraespecífica.', 'd) Uma das espécies seja produtora e a outra, consumidora.', 'b', 3, 2),
(65, '(UDESC 2016/2) “O tamanho das populações naturais, a despeito de seu enorme potencial de crescimento, mantém-se relativamente constante ao longo do tempo, sendo limitado pelo ambiente (disponibilidade de alimento, locais de procriação e presença de inimigos naturais de parasitas, etc.).”A informação acima constitui um dos alicerces da teoria elaborada por:', 'a) Charles Robert Darwin', 'b) Jean-Baptiste Lamarck', 'c) Theodosius Dobzhansky', 'd) Charles Lyell', 'a', 3, 2),
(66, '(UFMG) Desenvolvida, há 150 anos, por Charles Darwin e Alfred Wallace, a ideia da seleção natural pode ser sustentada por observações científicas atuais. Assinale a alternativa que contém uma informação que NÃO é sustentada pela Teoria Evolutiva por Seleção Natural.', 'a) A reposição do fator de coagulação mediante transfusão de sangue aumenta a adaptabilidade dos hemofílicos', 'b) Certas bactérias, em face de mudanças no ambiente, adquirem a capacidade de produzir novas substâncias. ', 'c) O vírus HIV pode sofrer mutações, o que dificulta o tratamento de indivíduos soropositivos. gabarito ', 'd) Os peixes cegos apresentam menor chance de sobrevivência em ambientes iluminados. ', 'b', 3, 1),
(67, '(UFRS) Embriões de vertebrados tendem a ser mais similares entre si do que os adultos correspondentes. Sobre esse fato, são feitas as seguintes afirmações. I - As analogias observadas indicam uma origem comum.  II - O estudo da embriologia comparada contribui para a compreensão da evolução biológica. III - Durante o desenvolvimento embrionário, os organismos passam por fases que repetem estágios adultos de seus ancestrais. Quais estão corretas? ', 'a) Apenas I', 'b) Apenas II', 'c) Apenas III', 'd) Apenas I e III', 'b', 3, 2),
(68, '(UFMG) Comportamentos que favorecem a dispersão também promovem, geralmente, a especiação. É CORRETO afirmar que, entre os comportamentos que costumam favorecer a especiação, se inclui ', 'a) a ocupação de novos nichos', 'b) a territorialidade', 'c) o cuidado com a prole', 'd) o sedentarismo ', 'a', 3, 1),
(69, '(UFC-CE) A definição de vida é motivo de muitos debates. Segundo a Biologia, o início da vida na Terra deu-se com:', 'a) o big bang, que deu origem ao universo e consequentemente à vida. ', 'b) o aumento dos níveis de O2 atmosférico, que permitiu a proliferação dos seres aeróbios. ', 'c) o surgimento dos coacervados, os quais, em soluções aquosas, são capazes de criar uma membrana, isolando a matéria orgânica do meio externo. ', 'd) o surgimento de uma bicamada fosfolipídica, que envolveu moléculas com capacidade de autoduplicação e metabolismo. ', 'd', 3, 1),
(70, '(UFMG) Desde sua introdução na década de 40, os antibióticos tornaram-se um sucesso no controle de doenças bacterianas, sendo considerados medicamentos milagrosos. Consequentemente, passou-se a acreditar que essas doenças eram coisas do passado. Entretanto tem-se verificado o "ressurgimento" de muitas delas. Todas as seguintes medidas podem ser implementadas, tratando-se de Saúde Pública, para minimizar o problema crescente de bactérias com resistência múltipla a antibióticos, EXCETO ', 'a) Aumentar o uso profilático desses medicamentos em rações animais, objetivando a imunização dos consumidores. ', 'b) Criar programas de vigilância hospitalar e comunitária para evitar o uso inadequado e abusivo desses medicamentos. ', 'c) Proibir a venda livre desses medicamentos e esclarecer a população dos riscos da automedicação. ', 'd) Vacinar a população para aumentar as defesas do organismo contra as doenças bacterianas, reduzindo o uso desses medicamentos.', 'a', 3, 1),
(71, '(UFG-GO) Quando Darwin chegou ao arquipélago de Galápagos, em 1835, observou pássaros da família Fringillidae (tentilhões) e ficou impressionado com as treze espécies dessas aves nas diferentes ilhas. Uma explicação para o surgimento dessas espécies é a irradiação adaptativa, na qual os tentilhões:', 'a) apresentavam características semelhantes e hereditárias que surgiram a cada geração por acaso e não em resposta às necessidades adaptativas dos indivíduos. ', 'b) foram capazes de gerar descendentes férteis em resposta a uma competição entre os machos de uma mesma espécie em disputa pelas fêmeas', 'c) adquiriram características em consequência do uso mais ou menos acentuado de uma parte do organismo. ', 'd) surgiram a partir de um ancestral comum que emigrou do continente para as ilhas, ocupando-as, enquanto os diversos ambientes insulares selecionaram as aves mais adaptadas. ', 'd', 3, 2),
(72, '(UFC-CE) Em um estudo realizado nas ilhas Galápagos, um casal de pesquisadores observou que indivíduos de uma espécie de tentilhão (espécie A) comumente se alimentavam de sementes de vários tamanhos. A ilha onde a espécie A ocorria foi colonizada por outra espécie de tentilhão (espécie B). Indivíduos de B se alimentavam de sementes grandes e eram mais eficientes que A na aquisição deste recurso. Com o passar dos anos, os dois pesquisadores observaram que o tamanho médio do bico dos indivíduos de A estava reduzindo gradualmente. Considerando que pássaros com bicos maiores conseguem se alimentar de sementes maiores, o processo de redução de bico observado em A é um exemplo de seleção: ', 'a) direcional: o estabelecimento de indivíduos da espécie B representou uma pressão seletiva que favoreceu indivíduos da espécie A com bicos pequenos. ', 'b) disruptiva: o estabelecimento de indivíduos da espécie B representou uma pressão seletiva que favoreceu indivíduos da espécie A com bicos muito pequenos ou muito grandes. ', 'c) estabilizadora: o estabelecimento de indivíduos da espécie B representou uma pressão seletiva que favoreceu indivíduos da espécie A com bicos de tamanho intermediário. ', 'd) sexual: o estabelecimento de indivíduos da espécie B aumentou a competição entre machos da espécie A por acesso às fêmeas. ', 'a', 3, 3),
(73, '(UFPI) De acordo com a hipótese endossimbiótica para a origem de algumas organelas eucarióticas, as bactérias primitivas associaram-se às células eucarióticas primitivas. Como exemplo de organela presente em quase todas as células que formam o nosso corpo, podemos citar o(a):', 'a) centríolo', 'b) cloroplasto', 'c) mitocôndria', 'd) complexo de Golgi', 'c', 3, 2),
(74, '(UNIFESP-SP) De acordo com a teoria da evolução biológica, os seres vivos vêm se modificando gradualmente ao longo das gerações, desde o seu surgimento na Terra, em um processo de adaptação evolutiva. Segundo essa teoria,', 'a) os indivíduos mais bem adaptados transmitem as características aos descendentes. ', 'b) ocorre a seleção de características morfológicas adquiridas pelo uso frequente. ', 'c) a seleção natural apenas elimina aqueles indivíduos que sofreram mutação. ', 'd) as mutações são dirigidas para genes específicos que proporcionam maior vantagem aos seus portadores. ', 'a', 3, 2),
(75, '(UFMG) Desde sua introdução na década de 40, os antibióticos tornaram-se um sucesso no controle de doenças bacterianas, sendo considerados medicamentos milagrosos. Conseqüentemente, passou-se a acreditar que essas doenças eram coisas do passado. Entretanto tem-se verificado o "ressurgimento" de muitas delas. Todas as seguintes medidas podem ser implementadas, tratando-se de Saúde Pública, para minimizar o problema crescente de bactérias com resistência múltipla a antibióticos, EXCETO', 'a) Aumentar o uso profilático desses medicamentos em rações animais, objetivando a imunização dos consumidores. ', 'b) Criar programas de vigilância hospitalar e comunitária para evitar o uso inadequado e abusivo desses medicamentos. ', 'c) Proibir a venda livre desses medicamentos e esclarecer a população dos riscos da automedicação. ', 'd) Vacinar a população para aumentar as defesas do organismo contra as doenças bacterianas, reduzindo o uso desses medicamentos', 'a', 3, 2),
(76, '(UFC-CE) Analise as assertivas a seguir: \nI - A mutação em células germinativas e somáticas é um dos elementos da variabilidade genética. Entretanto, em organismos de reprodução exclusivamente sexuada, a nova condição será compartilhada com a população somente quando ocorrer nas células somáticas. \nII - O evolucionismo está fundamentado em evidências, como o registro fóssil, as semelhanças anatômicas e a adaptação ao ambiente. \nIII - A condição derivada e compartilhada das fanerógamas é a presença de semente, assim como para equinodermata e cordata a condição é a deuterostomia. Com respeito às três assertivas, é correto afirmar que: \n', 'a) apenas II é verdadeira', 'b) apenas I e II são verdadeiras. ', 'c) apenas I e III são verdadeiras. ', 'd) apenas II e III são verdadeiras', 'd', 3, 2),
(77, '(PUC-MG) Darwin passou muito de seu tempo de coleta na América do Sul, onde as espécies observadas diferiam enormemente daquelas encontradas na Europa. Ele observou que as espécies das regiões temperadas da América do Sul eram mais similares àquelas das regiões tropicais da América do Sul do que àquelas das regiões européias. Correspondem às idéias da Teoria da Evolução de Darwin, exceto: ', 'a) As espécies não são imutáveis, elas sofrem modificações e adaptações ao longo do tempo. ', 'b) O agente que produz a variabilidade é a seleção natural. ', 'c) O registro fóssil, embora incompleto, revela padrões na evolução da vida.', 'd) A seleção natural favorece os indivíduos mais bem adaptados ao meio.', 'b', 3, 2),
(78, '(UNIRIO-RJ) O filme X-men 2, lançado em 2003, e dirigido por Bryan Singer, aborda a discriminação sofrida por mutantes. No final do filme é apresentado o texto que se segue: “Mutação: A chave para nossa evolução. Foi como evoluímos de um organismo unicelular para uma espécie dominante do planeta. É um processo lento, normalmente, levando vários milhares de anos. Mas de tantos em tantos milênios a evolução dá um salto adiante.” Considerando o processo evolutivo, não é aceitável afirmar que a mutação ', 'a) pode ser causada por um defeito no mecanismo de duplicação do DNA. ', 'b) de um gene qualquer é um fenômeno raro e de baixa ocorrência na natureza. ', 'c) pode ser causada por fatores ambientais, tais como calor, radioatividade e ação de produtos químicos. ', 'd) não tem efeito evolutivo, quando ocorre em células somáticas. ', 'b', 3, 2),
(79, '(UFRS) Leia o parágrafo a seguir. \n"Podemos descrever a vida, se quisermos, como solução de problemas, e os organismos vivos como os únicos complexos de solucionadores de problemas do Universo." Adaptado de: WILLIAMS, G. "O brilho do peixe-pônei". Rio de Janeiro: Rocco, 1998. p. 22. \nEm termos genéticos, a capacidade de solucionar problemas é medida pela contribuição reprodutiva diferencial de um genótipo ou fenótipo para a geração seguinte em relação à contribuição de outros genótipos ou fenótipos na mesma população. \nEsse conceito refere-se\n', 'a) à adaptabilidade', 'b) ao pool genético. ', 'c) ao tamanho efetivo da população. ', 'd) à sobrevivência diferencial', 'a', 3, 2),
(80, '(UFU-MG) Leia o trecho a seguir. “No processo evolutivo, muitos animais foram extintos depois de se diferenciarem de seus parentes mais próximos. Boa parte deles virou fóssil e, quando descobertos, ajudaram a remontar o passado das espécies [...].” ISTOÉ, Ed. 1934, 24 de janeiro de 2007. Acerca da evolução dos organismos, considere as afirmativas abaixo. \nI - Para avaliar as relações evolutivas entre as espécies são consideradas as semelhanças anatômicas, fisiológicas e moleculares, bem como os fósseis. \nII - Os fósseis humanos encontrados até o momento fortaleceram as primeiras hipóteses da origem humana, já que é possível se estabelecer quaisquer graus de variações entre as espécies fósseis e a espécie atual. \nIII - O grande avanço na passagem evolutiva de australopiteco para Homo sapiens é o desenvolvimento do sistema nervoso e, conseqüentemente, da inteligência, evidenciado pelo aumento do volume craniano. \nAssinale a alternativa que apresenta, apenas, afirmativas corretas.\n', 'a) I, II, III ', 'b) I e III ', 'c) II e III ', 'd) I e II ', 'b', 3, 3),
(81, '(UEL-PR) As barreiras geográficas interrompem o fluxo gênico, permitindo que duas populações separadas tomem caminhos evolutivos diferentes na medida em que os agentes seletivos atuantes são diferentes em ambientes diferentes. Acidentes naturais como montanhas e rios podem funcionar como barreiras geográficas, separando populações de mesma espécie que antes viviam juntas no mesmo espaço. Se essas populações se mantiverem isoladas por muito tempo, este tipo de evento pode levar a um processo conhecido como ', 'a) pangênese', 'b) seleção natural. ', 'c) panmixia', 'd) especiação', 'd', 3, 2),
(82, '(UFRS) Uma professora de biologia explicou aos seus alunos que a quantidade de enzima lactase diminui muito ao longo do desenvolvimento de indivíduos originários de povos orientais, o que impede a degradação efetiva do açúcar do leite. Uma das alunas comentou que essa diminuição de lactase deveria ser causada pelo tipo de alimentação característico dos orientais: pobre em leite e seus derivados. A professora ponderou que a aluna havia expressado uma ideia que correspondia ao pensamento de', 'a) Darwin', 'b) Morgan', 'c) Lamarck', 'd) Crick', 'c', 3, 2),
(83, '(MACKENZIE-SP) Em abril, o Mackenzie homenageou o grande pesquisador Charles Darwin, promovendo um ciclo de debates e de reflexões a respeito das teorias da evolução. Segundo a teoria de Darwin, considere as afirmações abaixo. \nI. A espécie humana leva vantagem sobre as outras espécies, pois a medicina garante a sobrevivência de indivíduos com características desvantajosas. \nII. O homem descende diretamente do macaco, ou seja, um ancestral deu origem ao macaco e este deu origem ao homem. \nIII. Darwin, na sua teoria original, não soube explicar que as diferenças entre os indivíduos ocorrem, principalmente, por mutações genéticas. \nIV. Todos os seres vivos, incluindo o homem, tiveram um ancestral comum. \nEstão corretas, apenas, \n', 'a) I e II. ', 'b) II e III. ', 'c) III e IV. ', 'd) I e IV. ', 'c', 3, 2),
(84, '(UNIFESP-SP) Leia os trechos seguintes, extraídos de um texto sobre cor de pele na espécie humana. A pele de povos que habitaram certas áreas durante milênios adaptou-se para permitir a produção de vitamina D. À medida que os seres humanos começaram a se movimentar pelo Velho Mundo há cerca de 100 mil anos, sua pele foi se adaptando às condições ambientais das diferentes regiões. A cor da pele das populações nativas da África foi a que teve mais tempo para se adaptar porque os primeiros seres humanos surgiram ali. (Scientific American Brasil, vol. 6, novembro de 2002.) Nesses dois trechos, encontram-se subjacentes idéias', 'a) da Teoria Sintética da Evolução', 'b) darwinistas', 'c) neodarwinistas', 'd) lamarckistas', 'd', 3, 2),
(85, '(PUC-MG) Os mecanismos de isolamento reprodutivo que operam antes do acasalamento são chamados de barreiras reprodutivas pré-zigóticas. Essas barreiras são importantes, pois evitam que indivíduos de espécies diferentes se cruzem e se reproduzam. Constituem barreiras reprodutivas pré-zigóticas, exceto: ', 'a) Isolamento espacial - indivíduos de espécies diferentes podem selecionar lugares no ambiente para viver. ', 'b) Sincronismo no período fértil - se o período de acasalamento de duas espécies não se sobrepuser, elas estão isoladas reprodutivamente pelo tempo. ', 'c) Viabilidade reduzida do híbrido - a prole híbrida pode sobreviver com mais dificuldade do que a prole de indivíduos de mesma espécie. ', 'd) Adaptações anatômicas dos órgãos reprodutivos - diferenças no tamanho e forma dos órgãos reprodutivos podem evitar a união de gametas de espécies diferentes.', 'c', 3, 2),
(86, '(UFT-TO) A origem da vida parece ter ocorrido há cerca de 3.400 M.a., quando o planeta Terra teria já 1.000 a 1.500 M.a., e os seres vivos conservam em si marcas do seu passado. Atualmente, há reconhecidamente duas formas de organização celular entre os seres vivos: a célula procariótica e a célula eucariótica, que provavelmente originaram-se de organismos ancestrais, a partir de eventos evolutivos e interações com os ecossistemas em que habitavam. Qual seria a origem da diferença entre células procarióticas e eucarióticas? Até há pouco tempo, considerava-se que as células eucarióticas teriam derivado da invaginação e especialização da membrana plasmática da célula procariótica. A cientista Lynn Margulis sugeriu que a origem da célula eucariótica se deve ao desenvolvimento de associações simbióticas obrigatórias entre diferentes seres, que ocorreram em três etapas: (1) Uma célula protoeucarionte hospedou uma bactéria aeróbia, obtendo assim a mitocôndria; (2) Esta célula proto-eucarionte hospedou uma espiroqueta obtendo assim cílios, flagelos e citoesqueleto; (3) Finalmente, esta célula proto-eucarionte hospedou uma cianobactéria e obteve assim os plastos. É verdadeiro que: \nI. Esta hipótese chamada Teoria Endossimbiontica é muito improvável porque a simbiose raramente ocorre na Natureza. \nII. A síntese protéica em mitocôndrias e cloroplastos não ocorre na presença de substâncias inibidoras de procariontes, como estreptomicina e cloranfenicol. \nIII. A membrana que envolve as mitocôndrias e plastos é dupla, o que sugere que a bactéria endossimbionte foi fagocitada pela célula proto-eucarionte. \nIV. Houve a aquisição de complexidade na estrutura e função da célula eucariótica em relação à célula procariótica, inclusive permitindo a maturação de proteínas.\nV. As organelas de eucariontes, mitocôndrias e plastos, não têm DNA próprio e, portanto não podem fazer divisão autônoma.\nIndique a alternativa em que todas as afirmativas são verdadeiras. \n', 'a) II, III e IV ', 'b) I, II e IV ', 'c) I, II, IV e V ', 'd) IV e V ', 'a', 3, 2),
(87, '(PUC-SP) Uma barreira geográfica separou a população A em dois grupos designados por A1 e A2. Com o decorrer do tempo A1 e A2 foram se diferenciando e deram origem, respectivamente, a duas populações designadas por B1 e B2. Indivíduos de B1 e B2 foram levados para laboratório e, cruzados, produziram todos os descendentes estéreis e com sérios problemas genéticos. Com relação à descrição acima, foram aventadas as seguintes hipóteses: \nI. A1 e A2 podem ter passado por estágios em que deram origem a sub-espécies; \nII. B1 e B2 podem ser duas espécies distintas; \nIII. As proteínas produzidas por indivíduos das populações A1 e A2 devem apresentar maior semelhança entre si do que as produzidas por B1 e B2. \n', 'a) apenas I e II viáveis. ', 'b) apenas I e III viáveis. ', 'c) apenas II e III viáveis.', 'd) I, II e III viáveis', 'd', 3, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `evolucao_prova`
--

CREATE TABLE IF NOT EXISTS `evolucao_prova` (
  `id` int(11) NOT NULL,
  `sessao_id` varchar(200) DEFAULT NULL,
  `pontuacao` int(11) DEFAULT NULL,
  `jogador_id` int(11) DEFAULT NULL,
  `jogada_inicio` text DEFAULT NULL,
  `jogada_fim` text DEFAULT NULL,
  `questao_acerto` text DEFAULT NULL,
  `questao_erro` text DEFAULT NULL,
  `jogo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `evolucao_prova`
--

INSERT INTO `evolucao_prova` (`id`, `sessao_id`, `pontuacao`, `jogador_id`, `jogada_inicio`, `jogada_fim`, `questao_acerto`, `questao_erro`, `jogo_id`) VALUES
(98, NULL, 2, 13, '02/12/2021 13:17', NULL, '1', '2', NULL),
(99, NULL, 25, 5, '02/12/2021 13:43', '02/12/2021 01:52', '7', NULL, NULL),
(100, NULL, 1, 17, '02/12/2021 19:45', NULL, '1', '1', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `evolucao_rel_prova_pergunta`
--

CREATE TABLE IF NOT EXISTS `evolucao_rel_prova_pergunta` (
  `id` int(11) NOT NULL,
  `pergunta_id` int(11) DEFAULT NULL,
  `prova_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1139 DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `evolucao_rel_prova_pergunta`
--

INSERT INTO `evolucao_rel_prova_pergunta` (`id`, `pergunta_id`, `prova_id`) VALUES
(1046, 46, 98),
(1047, 49, 98),
(1048, 43, 98),
(1049, 56, 98),
(1050, 48, 98),
(1051, 31, 98),
(1052, 78, 98),
(1053, 70, 98),
(1054, 33, 98),
(1055, 82, 98),
(1056, 34, 98),
(1057, 76, 98),
(1058, 54, 98),
(1059, 69, 98),
(1060, 37, 98),
(1061, 18, 98),
(1062, 40, 98),
(1063, 47, 98),
(1064, 23, 98),
(1065, 22, 98),
(1077, 68, 99),
(1078, 26, 99),
(1079, 35, 99),
(1080, 83, 99),
(1081, 61, 99),
(1082, 43, 99),
(1083, 41, 99),
(1084, 65, 99),
(1085, 21, 99),
(1086, 52, 99),
(1087, 45, 99),
(1088, 46, 99),
(1089, 73, 99),
(1090, 82, 99),
(1091, 87, 99),
(1092, 33, 99),
(1093, 70, 99),
(1094, 31, 99),
(1095, 50, 99),
(1096, 36, 99),
(1108, 39, 100),
(1109, 38, 100),
(1110, 37, 100),
(1111, 80, 100),
(1112, 18, 100),
(1113, 49, 100),
(1114, 35, 100),
(1115, 67, 100),
(1116, 22, 100),
(1117, 48, 100),
(1118, 74, 100),
(1119, 71, 100),
(1120, 58, 100),
(1121, 86, 100),
(1122, 69, 100),
(1123, 57, 100),
(1124, 76, 100),
(1125, 61, 100),
(1126, 27, 100),
(1127, 26, 100);

-- --------------------------------------------------------

--
-- Estrutura para tabela `evolucao_resposta`
--

CREATE TABLE IF NOT EXISTS `evolucao_resposta` (
  `rel_prova_pergunta_id` int(11) NOT NULL,
  `resposta_aluno` char(1) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `jogador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jessicaalves_usuarios`
--


--
-- Índices de tabela `evolucao_assunto`
--
ALTER TABLE `evolucao_assunto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `evolucao_dificuldade`
--
ALTER TABLE `evolucao_dificuldade`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `evolucao_historico_login`
--
ALTER TABLE `evolucao_historico_login`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_historico_login_jogador1_idx` (`jogador_id`);

--
-- Índices de tabela `evolucao_jogador`
--
ALTER TABLE `evolucao_jogador`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `evolucao_jogo`
--
ALTER TABLE `evolucao_jogo`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_jogo_jogador1` (`jogador_id`);

--
-- Índices de tabela `evolucao_pergunta`
--
ALTER TABLE `evolucao_pergunta`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_pergunta_assunto_idx` (`assunto_id`), ADD KEY `fk_pergunta_dificuldade1_idx` (`dificuldade_id`);

--
-- Índices de tabela `evolucao_prova`
--
ALTER TABLE `evolucao_prova`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_prova_jogador1_idx` (`jogador_id`), ADD KEY `fk_prova_jogo1_idx` (`jogo_id`);

--
-- Índices de tabela `evolucao_rel_prova_pergunta`
--
ALTER TABLE `evolucao_rel_prova_pergunta`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_pergunta_has_prova_prova1_idx` (`prova_id`), ADD KEY `fk_pergunta_has_prova_pergunta1_idx` (`pergunta_id`);

--
-- Índices de tabela `evolucao_resposta`
--
ALTER TABLE `evolucao_resposta`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_resposta_pergunta_idx` (`rel_prova_pergunta_id`), ADD KEY `fk_resposta_jogador1_idx` (`jogador_id`);

--

--
-- AUTO_INCREMENT de tabela `evolucao_assunto`
--
ALTER TABLE `evolucao_assunto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `evolucao_dificuldade`
--
ALTER TABLE `evolucao_dificuldade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `evolucao_historico_login`
--
ALTER TABLE `evolucao_historico_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de tabela `evolucao_jogador`
--
ALTER TABLE `evolucao_jogador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de tabela `evolucao_jogo`
--
ALTER TABLE `evolucao_jogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT de tabela `evolucao_pergunta`
--
ALTER TABLE `evolucao_pergunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT de tabela `evolucao_prova`
--
ALTER TABLE `evolucao_prova`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de tabela `evolucao_rel_prova_pergunta`
--
ALTER TABLE `evolucao_rel_prova_pergunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1139;
--
-- AUTO_INCREMENT de tabela `evolucao_resposta`
--
ALTER TABLE `evolucao_resposta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--


--
-- Restrições para tabelas `evolucao_historico_login`
--
ALTER TABLE `evolucao_historico_login`
ADD CONSTRAINT `fk_historico_login_jogador1` FOREIGN KEY (`jogador_id`) REFERENCES `evolucao_jogador` (`id`) ON UPDATE CASCADE;

--
-- Restrições para tabelas `evolucao_pergunta`
--
ALTER TABLE `evolucao_pergunta`
ADD CONSTRAINT `fk_pergunta_assunto` FOREIGN KEY (`assunto_id`) REFERENCES `evolucao_assunto` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_pergunta_dificuldade1` FOREIGN KEY (`dificuldade_id`) REFERENCES `evolucao_dificuldade` (`id`) ON UPDATE CASCADE;

--
-- Restrições para tabelas `evolucao_prova`
--
ALTER TABLE `evolucao_prova`
ADD CONSTRAINT `fk_jogo_jogador1` FOREIGN KEY (`jogador_id`) REFERENCES `evolucao_jogador` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_prova_jogador1` FOREIGN KEY (`jogador_id`) REFERENCES `evolucao_jogador` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_prova_jogo1` FOREIGN KEY (`jogo_id`) REFERENCES `evolucao_jogo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `evolucao_rel_prova_pergunta`
--
ALTER TABLE `evolucao_rel_prova_pergunta`
ADD CONSTRAINT `fk_pergunta_has_prova_pergunta1` FOREIGN KEY (`pergunta_id`) REFERENCES `evolucao_pergunta` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_pergunta_has_prova_prova1` FOREIGN KEY (`prova_id`) REFERENCES `evolucao_prova` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_prova_id` FOREIGN KEY (`prova_id`) REFERENCES `evolucao_prova` (`id`);

--
-- Restrições para tabelas `evolucao_resposta`
--
ALTER TABLE `evolucao_resposta`
ADD CONSTRAINT `fk_resposta_jogador1` FOREIGN KEY (`jogador_id`) REFERENCES `evolucao_jogador` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_resposta_pergunta` FOREIGN KEY (`rel_prova_pergunta_id`) REFERENCES `evolucao_rel_prova_pergunta` (`id`) ON UPDATE CASCADE;

--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
