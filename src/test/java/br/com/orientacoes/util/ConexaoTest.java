package br.com.orientacoes.util;

import org.junit.Test;


public class ConexaoTest {
    
    @Test
    public void testRealizaConexao(){
        Conexao conexao = new Conexao();
        conexao.conecta();
    }
    
    @Test
    public void testCriaTabelas(){
        
    }
    
}
