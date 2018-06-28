package br.com.orientacoes.dao;

import br.com.orientacoes.modelo.Professor;
import javax.swing.JOptionPane;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

public class ProfessorDAOTest {
    
    @Test
    public void testSalvarProfessor(){
        Professor professor = new Professor("Fabricio");
        
        ProfessorDAO dao = new ProfessorDAO();
        
        assertTrue(dao.inserir(professor));
    }
    
    @Test
    public void testListarProfessores(){
        ProfessorDAO dao = new ProfessorDAO();
        dao.listar();
    }
}
