<%-- 
    Document   : listAccount
    Created on : 6 févr. 2021, 11:19:33
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
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

        <c:if test="${param['action'] == 'listerLesUtilisateurs'}" >
            <div style="margin-top: 100px"> 
                                            <h2>Liste des utilisateurs</h2>
            <table class="table table-dark" >

                <!-- La ligne de titre du tableau des comptes -->
                <tr>
                    <td scope="row"><b>accountNumber</b></td>
                    <td><b>balance</b></td>
                    <td><b>firstName</b></td>
                                        <td><b>lastName</b></td>

                </tr>

                <!-- Ici on affiche les lignes, une par utilisateur -->
                <!-- cette variable montre comment on peut utiliser JSTL et EL pour calculer -->
                <c:set var="total" value="0"/>

                <c:forEach var="u" items="${requestScope['listeDesUsers']}">
                    <tr>
                                                <td>${u.accountNumber}</td>

                        <td scope="row">${u.balance}</td>
                        <td>${u.firstName}</td>
                        <td>${u.lastName}</td>
                        <!-- On compte le nombre de users -->
                        <c:set var="total" value="${total+1}"/>
                    </tr>
                </c:forEach>

                <!-- Affichage du solde total dans la dernière ligne du tableau -->
                <tr><td><b>TOTAL</b></td><td></td><td></td><td><b>${total}</b></td></tr>
            </table>
</div>
        </c:if>
    </body>
</html>
