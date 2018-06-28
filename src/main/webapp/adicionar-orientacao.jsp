<%@page import="java.util.List"%>
<%@page import="br.com.orientacoes.modelo.Professor"%>
<%@include file="components/header.jsp" %>
<div class="starter-template">
    <h4>Adicionar Orienta��o</h4>
    <hr />
    <form action="orientacao-novo" method="post">
        <div class="form-group">
            <label for="tema">Tema da orienta��o</label>
            <input type="text" name="tema" class="form-control" placeholder="Informe qual � o tema da orienta��o" required />
        </div>
        
        <div class="form-group">
            <label for="aluno">Nome do Aluno</label>
            <input type="text" name="aluno" class="form-control" placeholder="Informe qual � o nome do aluno" required />
        </div>
        
        <div class="form-group">
            <label for="id_professor">Professor orientador</label>
            <select name="id_professor" class="form-control">
                <% for(Professor professor : (List<Professor>) request.getAttribute("professores")){ %>
                <option value="<%= professor.getId()%>"><%= professor.getNome() %></option>
                <% } %>
            </select>
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg btn-block">Adicionar orienta��o</button>
        </div>
    </form>
</div>
<%@include file="components/footer.jsp" %>