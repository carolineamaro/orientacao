<%@include file="components/header.jsp" %>
<link rel="stylesheet" href="https://getbootstrap.com/docs/4.0/examples/floating-labels/floating-labels.css" />
<form class="form-signin">
    <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">Gerenciador de Orientações</h1>
    </div>

    <div class="form-label-group">
        <input type="email" id="inputEmail" class="form-control" placeholder="Seu e-mail" required autofocus>
        <label for="inputEmail">Seu e-mail</label>
    </div>

    <div class="form-label-group">
        <input type="password" id="inputPassword" class="form-control" placeholder="Sua senha" required>
        <label for="inputPassword">Sua senha</label>
    </div>


    <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
</form>
<%@include file="components/footer.jsp" %>