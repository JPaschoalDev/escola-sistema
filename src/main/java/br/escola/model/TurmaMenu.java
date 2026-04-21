package br.escola.model;


import br.escola.service.Conexao;

import java.sql.*;
import java.util.Scanner;

public class TurmaMenu {
    public static void listarTurmas() {
        String sql = "SELECT * FROM escola.turma";

        try (Connection con = Conexao.obter();
             Statement st  = con.createStatement();
             ResultSet ab = st.executeQuery(sql)) {

            System.out.println("\n--- TURMA ---");

            while (ab.next()) {
                System.out.printf("id: %d | Nome: %s | Ano: %s | Turno: %s | Capacidade: %d%n",
                        ab.getInt("id"),
                        ab.getString("nome"),
                        ab.getInt("ano"),
                        ab.getString("turno"),
                        ab.getInt("capacidade"));
            }
        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
        }

    }

    public static void verRelatorioTurma(Scanner sc) {
        System.out.println("\nQual turma você quer ver o relatório? (Informe o ID da turma)");
        int idTurma = sc.nextInt();

        String sql = "{call sp_relatorio_turma(?)}";

        try (Connection con = Conexao.obter();
             CallableStatement cs = con.prepareCall(sql);) {

            cs.setInt(1, idTurma);

            try (ResultSet rs = cs.executeQuery()) {

                System.out.println("\n--- RELATÓRIO DA TURMA (" + idTurma + ") ---");

                boolean encontrou = false;
                while (rs.next()) {
                    encontrou = true;
                    System.out.printf("Turma: %s | Total de disciplinas: %d%n",
                            rs.getString("turma"),
                            rs.getInt("total_disciplinas"));
                }

                if (!encontrou) {
                    System.out.println("Nenhum resultado encontrado para a turma " + idTurma + ".");
                }
            }

        } catch (Exception e) {
            System.out.println("Erro ao buscar relatório: " + e.getMessage());
        }
    }
}
