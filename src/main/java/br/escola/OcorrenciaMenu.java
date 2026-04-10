package br.escola;

import java.sql.*;

public class OcorrenciaMenu {
    public static void ListaOcorrencia()
    {
        String sql = "SELECT tipo, descricao, data_ocorrencia FROM ocorrencia";

        try (
                Connection con = Conexao.obter();      // Abre conexão com o MySQL
                Statement st = con.createStatement(); // Cria executor de SQL simples
                ResultSet rs = st.executeQuery(sql)) {// Executa a query e guarda as linhas retornadas

            System.out.println("\n--- OCORRENCIAS ---");

            // rs.next() funciona como um cursor/ponteiro:
            // começa ANTES da primeira linha, e cada chamada avança uma posição.
            // Retorna true enquanto houver linha, false quando acabar.
            while (rs.next()) {

                // printf formata a saída em colunas alinhadas:
                // %-30s = texto (s) alinhado à esquerda (-) em 30 caracteres de largura
                // %s    = texto simples sem formatação especial
                // %n    = quebra de linha (equivalente ao \n, mas compatível com qualquer SO)
                System.out.printf("%-30s | %s | %s%n",
                        rs.getString("tipo"),     // Lê o valor da coluna "nome" da linha atual
                        rs.getString("descricao"),   // Lê o valor da coluna "codigo"
                        rs.getString("data_ocorrencia"));  // Lê o valor da coluna "status"
            }

        } catch (Exception e) {
            // Captura qualquer erro que tenha ocorrido dentro do try:
            // banco offline, senha errada, query com erro de sintaxe, etc.
            // getMessage() retorna uma descrição legível do problema.
            System.out.println("Erro: " + e.getMessage());
        }
    }
}

