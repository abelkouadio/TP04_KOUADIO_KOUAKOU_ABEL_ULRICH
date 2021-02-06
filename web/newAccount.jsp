<%-- 
    Document   : newAccount
    Created on : 6 févr. 2021, 11:19:12
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="alert alert-success" role="alert">
            <h1 style="text-align: center">BIENVENUE DANS LE SYSTEME DE GESTION BANCAIRE </h1>
</div>

   <ul class="nav" style="margin-left: 400px">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page"  href="newAccount.jsp">Commencer</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="newAccount.jsp">Inserer vos données Bancaires</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="listeAccount?action=listerLesUtilisateurs">Afficher/raffraichir la liste de tous les utilisateurs</a>
  </li>
  
</ul>
         <form action="createAccount" method="post" style="margin: 50px;margin-top: 100px">
                <h1>Inserer vos données Bancaire</h1>

             <div class="form-group">
        <input class="form-control form-control-lg" name="nom" type="text" placeholder="Enter your FirstName">
</div>
                <div class="form-group">

                <input class="form-control form-control-lg"  name="prenom" name="nom" type="text" placeholder="Enter your LasttName">
</div>
                <div class="form-group">

                        <input class="form-control form-control-lg"  name="login" type="text" placeholder="Enter your accountNumber">
</div>
                <div class="form-group">

                        <input class="form-control form-control-lg"  name="balance"type="text" placeholder="Enter your balance">
</div>

        <!-- Astuce pour passer des paramètres à une servlet depuis un formulaire JSP !-->
        <input type="hidden" name="action" value="creerUnUtilisateur"/>
        <button type="submit" style="width:100%" class="btn btn-primary mb-2">Inserer</button>
    </form>
    </body>
</html>
