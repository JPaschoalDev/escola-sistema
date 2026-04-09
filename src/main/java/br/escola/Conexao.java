package br.escola;

import java.sql.Connection;
import java.sql.DriverManager;

// Classe responsável por gerenciar a conexão com o banco de dados.
public class Conexao {

    // Endereço do banco: "jdbc:mysql://" é o protocolo,
    // "localhost" significa que o banco está na própria máquina,
    // "3306" é a porta padrão do MySQL,
    // "escola" é o nome do banco de dados que criamos
    private static final String URL = "jdbc:mysql://localhost:3306/escola";

    // Usuário do MySQL
    private static final String USUARIO = "root";

    // Senha definida na criação do banco
    private static final String SENHA = "CBO*579c";

    // Metodo que abre e retorna uma conexão com o banco.
    //  É "static" pra poder ser chamado sem precisar criar um objeto Conexao.
    //  O "throws Exception" avisa que pode dar erro (ex: senha errada, banco offline)
    //  e quem chamar esse metodo precisa lidar com isso.
    public static Connection obter() throws Exception {

        // DriverManager é uma classe do Java que sabe como se conectar
        // a diferentes bancos de dados. Aqui passamos a URL, usuário e senha.
        return DriverManager.getConnection(URL, USUARIO, SENHA);
    }
}