package br.com.orientacoes.dao;

import br.com.orientacoes.util.Conexao;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class AbstractDAO<T> {

    protected Conexao conexao;
    protected Connection connection;

    public AbstractDAO() {
        this.conexao = new Conexao();
    }

    protected void abreConexao() {
        this.connection = conexao.conecta();
    }

    protected void fechaConexao() {
        try {
            this.connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProfessorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public abstract boolean inserir(T objeto);
    public abstract List<T> listar();
    public abstract boolean deletar(int id);
    public abstract T procurar(int id);
}