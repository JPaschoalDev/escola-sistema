-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: escola
-- ------------------------------------------------------
-- Server version	8.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `vw_boletim`
--

DROP TABLE IF EXISTS `vw_boletim`;
/*!50001 DROP VIEW IF EXISTS `vw_boletim`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_boletim` AS SELECT 
 1 AS `aluno`,
 1 AS `matricula`,
 1 AS `ano`,
 1 AS `turma`,
 1 AS `disciplina`,
 1 AS `professor`,
 1 AS `bimestre`,
 1 AS `nota`,
 1 AS `faltas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_media_anual`
--

DROP TABLE IF EXISTS `vw_media_anual`;
/*!50001 DROP VIEW IF EXISTS `vw_media_anual`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_media_anual` AS SELECT 
 1 AS `aluno`,
 1 AS `matricula`,
 1 AS `ano`,
 1 AS `disciplina`,
 1 AS `media`,
 1 AS `total_faltas`,
 1 AS `situacao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_carga_professor`
--

DROP TABLE IF EXISTS `vw_carga_professor`;
/*!50001 DROP VIEW IF EXISTS `vw_carga_professor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_carga_professor` AS SELECT 
 1 AS `professor`,
 1 AS `ano`,
 1 AS `qtd_turmas`,
 1 AS `qtd_disciplinas`,
 1 AS `atribuicoes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_ranking_turmas`
--

DROP TABLE IF EXISTS `vw_ranking_turmas`;
/*!50001 DROP VIEW IF EXISTS `vw_ranking_turmas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_ranking_turmas` AS SELECT 
 1 AS `ano`,
 1 AS `turma`,
 1 AS `turno`,
 1 AS `qtd_alunos`,
 1 AS `media_geral`,
 1 AS `media_faltas`,
 1 AS `posicao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_ficha_aluno`
--

DROP TABLE IF EXISTS `vw_ficha_aluno`;
/*!50001 DROP VIEW IF EXISTS `vw_ficha_aluno`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_ficha_aluno` AS SELECT 
 1 AS `id`,
 1 AS `matricula`,
 1 AS `nome`,
 1 AS `data_nascimento`,
 1 AS `status`,
 1 AS `advertencias`,
 1 AS `elogios`,
 1 AS `atividades`,
 1 AS `media_geral`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_alunos_em_risco`
--

DROP TABLE IF EXISTS `vw_alunos_em_risco`;
/*!50001 DROP VIEW IF EXISTS `vw_alunos_em_risco`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_alunos_em_risco` AS SELECT 
 1 AS `aluno`,
 1 AS `matricula`,
 1 AS `ano`,
 1 AS `disciplina`,
 1 AS `media`,
 1 AS `faltas`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_boletim`
--

/*!50001 DROP VIEW IF EXISTS `vw_boletim`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_boletim` AS select `a`.`nome` AS `aluno`,`m`.`codigo` AS `matricula`,`t`.`ano` AS `ano`,`t`.`nome` AS `turma`,`d`.`nome` AS `disciplina`,`p`.`nome` AS `professor`,`n`.`bimestre` AS `bimestre`,`n`.`nota` AS `nota`,`n`.`faltas` AS `faltas` from ((((((`nota` `n` join `matricula` `m` on((`m`.`id` = `n`.`id_matricula`))) join `aluno` `a` on((`a`.`id` = `m`.`id_aluno`))) join `turma_disciplina` `td` on((`td`.`id` = `n`.`id_turma_disciplina`))) join `turma` `t` on((`t`.`id` = `td`.`id_turma`))) join `disciplina` `d` on((`d`.`id` = `td`.`id_disciplina`))) join `professor` `p` on((`p`.`id` = `td`.`id_professor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_media_anual`
--

/*!50001 DROP VIEW IF EXISTS `vw_media_anual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_media_anual` AS select `a`.`nome` AS `aluno`,`m`.`codigo` AS `matricula`,`t`.`ano` AS `ano`,`d`.`nome` AS `disciplina`,round(avg(`n`.`nota`),2) AS `media`,sum(`n`.`faltas`) AS `total_faltas`,(case when (avg(`n`.`nota`) >= 6) then 'APROVADO' when (avg(`n`.`nota`) >= 4) then 'RECUPERACAO' else 'REPROVADO' end) AS `situacao` from (((((`nota` `n` join `matricula` `m` on((`m`.`id` = `n`.`id_matricula`))) join `aluno` `a` on((`a`.`id` = `m`.`id_aluno`))) join `turma_disciplina` `td` on((`td`.`id` = `n`.`id_turma_disciplina`))) join `turma` `t` on((`t`.`id` = `td`.`id_turma`))) join `disciplina` `d` on((`d`.`id` = `td`.`id_disciplina`))) group by `a`.`nome`,`m`.`codigo`,`t`.`ano`,`d`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_carga_professor`
--

/*!50001 DROP VIEW IF EXISTS `vw_carga_professor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_carga_professor` AS select `p`.`nome` AS `professor`,`t`.`ano` AS `ano`,count(distinct `td`.`id_turma`) AS `qtd_turmas`,count(distinct `td`.`id_disciplina`) AS `qtd_disciplinas`,group_concat(distinct concat(`t`.`nome`,' - ',`d`.`nome`) separator '; ') AS `atribuicoes` from (((`turma_disciplina` `td` join `professor` `p` on((`p`.`id` = `td`.`id_professor`))) join `turma` `t` on((`t`.`id` = `td`.`id_turma`))) join `disciplina` `d` on((`d`.`id` = `td`.`id_disciplina`))) group by `p`.`nome`,`t`.`ano` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_ranking_turmas`
--

/*!50001 DROP VIEW IF EXISTS `vw_ranking_turmas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_ranking_turmas` AS select `t`.`ano` AS `ano`,`t`.`nome` AS `turma`,`t`.`turno` AS `turno`,count(distinct `n`.`id_matricula`) AS `qtd_alunos`,round(avg(`n`.`nota`),2) AS `media_geral`,round(avg(`n`.`faltas`),1) AS `media_faltas`,rank() OVER (PARTITION BY `t`.`ano` ORDER BY avg(`n`.`nota`) desc )  AS `posicao` from ((`turma` `t` join `turma_disciplina` `td` on((`td`.`id_turma` = `t`.`id`))) join `nota` `n` on((`n`.`id_turma_disciplina` = `td`.`id`))) group by `t`.`id`,`t`.`ano`,`t`.`nome`,`t`.`turno` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_ficha_aluno`
--

/*!50001 DROP VIEW IF EXISTS `vw_ficha_aluno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_ficha_aluno` AS select `a`.`id` AS `id`,`m`.`codigo` AS `matricula`,`a`.`nome` AS `nome`,`a`.`data_nascimento` AS `data_nascimento`,`m`.`status` AS `status`,(select count(0) from `ocorrencia` `o` where ((`o`.`id_matricula` = `m`.`id`) and (`o`.`tipo` = 'ADVERTENCIA'))) AS `advertencias`,(select count(0) from `ocorrencia` `o` where ((`o`.`id_matricula` = `m`.`id`) and (`o`.`tipo` = 'ELOGIO'))) AS `elogios`,(select count(0) from `atividade_extracurricular` `ae` where (`ae`.`id_matricula` = `m`.`id`)) AS `atividades`,(select round(avg(`n`.`nota`),2) from `nota` `n` where (`n`.`id_matricula` = `m`.`id`)) AS `media_geral` from (`aluno` `a` join `matricula` `m` on((`m`.`id_aluno` = `a`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_alunos_em_risco`
--

/*!50001 DROP VIEW IF EXISTS `vw_alunos_em_risco`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_alunos_em_risco` AS select `a`.`nome` AS `aluno`,`m`.`codigo` AS `matricula`,`t`.`ano` AS `ano`,`d`.`nome` AS `disciplina`,round(avg(`n`.`nota`),2) AS `media`,sum(`n`.`faltas`) AS `faltas` from (((((`nota` `n` join `matricula` `m` on((`m`.`id` = `n`.`id_matricula`))) join `aluno` `a` on((`a`.`id` = `m`.`id_aluno`))) join `turma_disciplina` `td` on((`td`.`id` = `n`.`id_turma_disciplina`))) join `turma` `t` on((`t`.`id` = `td`.`id_turma`))) join `disciplina` `d` on((`d`.`id` = `td`.`id_disciplina`))) group by `a`.`nome`,`m`.`codigo`,`t`.`ano`,`d`.`nome` having ((avg(`n`.`nota`) < 6) or (sum(`n`.`faltas`) > 20)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-13 18:20:38
