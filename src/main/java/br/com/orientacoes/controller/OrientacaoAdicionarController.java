package br.com.orientacoes.controller;

import br.com.orientacoes.dao.OrientacaoDAO;
import br.com.orientacoes.dao.ProfessorDAO;
import br.com.orientacoes.modelo.Orientacao;
import br.com.orientacoes.modelo.Professor;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/orientacao-novo"})
public class OrientacaoAdicionarController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        request.setAttribute("professores", new ProfessorDAO().listar());
        request.getRequestDispatcher("adicionar-orientacao.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String tema = request.getParameter("tema");
        String aluno = request.getParameter("aluno");
        Professor professor = new ProfessorDAO().procurar(Integer.parseInt(request.getParameter("id_professor")));

        if(tema == null || aluno == null){
            doGet(request, response);
        }else{
            Orientacao orientacao = new Orientacao(tema, professor, aluno);
            OrientacaoDAO dao = new OrientacaoDAO();
            dao.inserir(orientacao);
            
            response.sendRedirect("orientacao?inserido=true");
        }
    }

}
