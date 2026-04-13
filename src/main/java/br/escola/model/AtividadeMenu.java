package br.escola.model;

import br.escola.service.Conexao;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;

public class AtividadeMenu {
    // =========================================================================
    //                           Listar todas as atividades
    // =========================================================================
    // Metodo responsável por buscar e exibir todas as atividades cadastradas
    // no banco de dados.
    //
    // As informações apresentadas incluem:
    // - ID da atividade
    // - ID do aluno
    // - Código de matrícula do aluno
    // - ID do professor responsável
    // - Tipo de esporte praticado
    // - Descrição da atividade
    // - Data de ocorrência
    //
    // Os dados são recuperados da tabela "atividades" e exibidos no console.

    public static void listarAtividades() throws Exception {
        String sql = "SELECT m.id AS id_matricula, al.nome, a.tipo, a.data_inicio, a.data_fim, a.observacao " +
                "FROM atividade_extracurricular a " +
                "JOIN matricula m ON m.id = a.id_matricula " +
                "JOIN aluno al ON al.id = m.id_aluno";

        try (Connection conn = Conexao.obter();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                int matricula     = rs.getInt("id_matricula");
                String nome       = rs.getString("nome");        // era getInt — nome é texto
                String tipo       = rs.getString("tipo");
                Date data_inicio  = rs.getDate("data_inicio");   // era getInt — data_inicio é Date
                Date data_fim     = rs.getDate("data_fim");
                String observacao = rs.getString("observacao");

                System.out.println("Matrícula: " + matricula);
                System.out.println("Nome: "      + nome);
                System.out.println("Tipo: "      + tipo);
                System.out.println("Data Início: "+ data_inicio);
                System.out.println("Data Fim: "  + data_fim);
                System.out.println("Observação: "+ observacao);
                System.out.println("-----------------------------");
            }

        } catch (SQLException e) {
            System.out.println("Erro ao listar atividades: " + e.getMessage());
        }
    }
}