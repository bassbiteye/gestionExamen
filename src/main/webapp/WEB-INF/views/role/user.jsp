<%--
  Created by IntelliJ IDEA.
  User: bass-codeur
  Date: 07-09-2021
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>${page}</title>
    <jsp:include page="/WEB-INF/tags/layout-head.jsp"></jsp:include>
<%--
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body class="nk-body bg-white npc-general no-touch nk-nio-theme has-sidebar as-mobile" cz-shortcut-listen="true">
<div class="nk-app-root">
    <!-- main @s  -->
    <div class="nk-main ">
        <jsp:include page="/WEB-INF/tags/sidebar.jsp"></jsp:include>

        <!-- wrap @s  -->
        <div class="nk-wrap ">
            <jsp:include page="/WEB-INF/tags/navbar.jsp"></jsp:include>

            <!-- content @s  -->
            <div class="nk-content ">
                <div class="container-fluid">
                    <div class="nk-content-inner">
                        <div class="nk-content-body">
                            <div id="app">
                                <c:if test="${userUpdate.id != null}">
                                    <script>
                                        $(document).ready(function(){
                                            $("#modalLargeEdit").modal("show");
                                       });
                                    </script>
                                </c:if>


                                <c:if test="${message=='1'}">
                                <div id="message" class="alert alert-success">utilisateur créé avec success</div>
                                </c:if>
                                <c:if test="${delete=='1'}">
                                <div id="message" class="alert alert-danger">utilisateur supprimé avec success</div>
                                </c:if>
                                <c:if test="${okedit=='1'}">
                                    <div id="message" class="alert alert-primary">utilisateur modifié avec success</div>
                                </c:if> <c:if test="${etat=='1'}">
                                    <div id="message" class="alert alert-primary">utilisateur est débloqué avec success</div>
                                </c:if>

                                <c:if test="${etat=='2'}">
                                    <div id="message" class="alert alert-danger">utilisateur est bloqué avec success</div>
                                </c:if>

                                <div class="nk-content-inner">
                                        <div class="nk-content-body">
                                            <div class="nk-block-head nk-block-head-sm">
                                                <div class="nk-block-between">
                                                    <div class="nk-block-head-content"><h3
                                                            class="nk-block-title page-title">
                                                        Liste des Utilisateurs
                                                    </h3>
                                                        <div class="nk-block-des text-soft"><p>${nombre.email}</p>
                                                        </div>
                                                    </div>
                                                    <div class="nk-block-head-content">
                                                        <div class="toggle-wrap nk-block-tools-toggle"><a href="#"
                                                                                                          data-target="pageMenu"
                                                                                                          class="btn btn-icon btn-trigger toggle-expand mr-n1"><em
                                                                class="icon ni ni-menu-alt-r"></em></a>
                                                            <div data-content="pageMenu" class="toggle-expand-content">
                                                                <ul class="nk-block-tools g-3">
                                                                    <li class="nk-block-tools-opt">
                                                                        <div class="drodown"><a href="#"
                                                                                                class="dropdown-toggle btn btn-icon btn-primary"><em
                                                                                class="icon ni ni-plus"
                                                                                onclick="newModal()"></em></a></div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="nk-block">
                                                <div class="card card-bordered card-stretch">
                                                    <div class="card-inner-group">
                                                        <div class="card-inner position-relative card-tools-toggle">
                                                            <div class="card-title-group">
                                                                <div class="card-tools mr-n1">
                                                                    <ul class="btn-toolbar gx-1">
                                                                        <li><a href="#" data-target="search"
                                                                               class="btn btn-icon search-toggle toggle-search"><em
                                                                                class="icon ni ni-search"></em></a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div data-search="search" class="card-search search-wrap">
                                                                <div class="card-body">
                                                                    <div class="search-content"><a href="#"
                                                                                                   data-target="search"
                                                                                                   class="search-back btn btn-icon toggle-search"><em
                                                                            class="icon ni ni-arrow-left"></em></a>
                                                                        <input type="text" placeholder="Rechercher "
                                                                               class="form-control border-transparent form-focus-none">
                                                                        <button class="search-submit btn btn-icon"><em
                                                                                class="icon ni ni-search"></em></button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card-inner p-0">
                                                            <div class="nk-tb-list nk-tb-ulist">
                                                                <div class="nk-tb-item nk-tb-head">
                                                                    <div class="nk-tb-col"><span
                                                                            class="sub-text">User</span></div>
                                                                    <div class="nk-tb-col tb-col-mb"><span
                                                                            class="sub-text">matricule</span></div>
                                                                    <div class="nk-tb-col tb-col-md"><span
                                                                            class="sub-text">Téléphone</span></div>
                                                                    <div class="nk-tb-col tb-col-lg"><span
                                                                            class="sub-text">adresse</span></div>
                                                                    <div class="nk-tb-col tb-col-lg"><span
                                                                            class="sub-text">Etablissement</span></div>
                                                                    <div class="nk-tb-col tb-col-lg"><span
                                                                            class="sub-text">Fonction</span></div>
                                                                    <div class="nk-tb-col tb-col-md"><span
                                                                            class="sub-text">Status</span></div>
                                                                    <div class="nk-tb-col tb-col-md"><span
                                                                            class="sub-text">Actions</span></div>
                                                                </div>

                                                                <c:forEach items="${list_users}" var="user">
                                                                    <div class="nk-tb-item">

                                                                        <div class="nk-tb-col"><a href="#">
                                                                            <div class="user-card">
                                                                                <div class="user-avatar bg-primary">
                                                                                    <span>Bs</span></div>
                                                                                <div class="user-info"><span
                                                                                        class="tb-lead">${user.prenom } ${user.nom }
                                                                                <span class="dot dot-success d-md-none ml-1"></span></span>
                                                                                    <span>${user.email }</span>
                                                                                </div>
                                                                            </div>
                                                                        </a></div>
                                                                        <div class="nk-tb-col tb-col-mb"><span
                                                                                class="tb-amount">${user.matricule}</span>
                                                                        </div>
                                                                        <div class="nk-tb-col tb-col-md">
                                                                            <span>${user.telephone}</span></div>
                                                                        <div class="nk-tb-col tb-col-lg">
                                                                            <ul class="list-status">
                                                                                <li>
                                                                                    <em class="icon text-success ni ni-check-circle"></em>
                                                                                    <span>${user.adresse}</span></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="nk-tb-col tb-col-lg">
                                                                            <span>${user.role}</span></div>
                                                                        <div class="nk-tb-col tb-col-lg">
                                                                            <span>${user.etablissement}</span></div>
                                                                        <div class="nk-tb-col tb-col-md">
                                                                            <c:if test="${user.etat=='1'}">
                                                                            <span class="tb-status text-success">Actif</span>
                                                                            </c:if>
                                                                            <c:if test="${user.etat=='0'}">
                                                                                <span class="tb-status text-danger">Inactif</span>
                                                                            </c:if>
                                                                        </div>
                                                                        <div class="nk-tb-col nk-tb-col-tools">
                                                                            <ul class="nk-tb-actions gx-1">
                                                                                <li class="nk-tb-action-hidden"><a
                                                                                        href="/user?update=${user.id}"

                                                                                        data-toggle="tooltip"
                                                                                        data-placement="top"
                                                                                        title="Modifier"
                                                                                        class="btn btn-trigger btn-icon"><em
                                                                                        class="icon ni ni-edit-fill"></em></a>
                                                                                </li>
                                                                                <li class="nk-tb-action-hidden"><a
                                                                                        href="/user?delete=${user.id}"
                                                                                        data-toggle="tooltip"
                                                                                        data-placement="top"
                                                                                        title="Supprimer"
                                                                                        class="btn btn-trigger btn-icon"><em
                                                                                        class="icon ni ni-archived-fill"></em></a>
                                                                                </li>
                                                                                <li class="nk-tb-action-hidden"><a
                                                                                        href="/user?etat=${user.id}"
                                                                                        data-toggle="tooltip"
                                                                                        data-placement="top"
                                                                                        title="Suspendre"
                                                                                        class="btn btn-trigger btn-icon"><em
                                                                                        class="icon ni ni-lock"></em></a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </c:forEach>
                                                            </div>
                                                            <div class="card-inner">
                                                                <div class="nk-block-between-md g-3">
                                                                    <div class="g">
                                                                        <ul class="pagination justify-content-center justify-content-md-start">
                                                                            <!---->
                                                                            <li class="page-item active"><a
                                                                                    href="javascript:void(0)"
                                                                                    class="page-link">1</a></li> <!---->
                                                                        </ul>
                                                                    </div>
                                                                    <div class="g">
                                                                        <div class="pagination-goto d-flex justify-content-center justify-content-md-start gx-3">
                                                                            <div>Page</div>
                                                                            <select data-search="on"
                                                                                    data-dropdown="xs center"
                                                                                    class=" form-control">
                                                                                <option value="1">
                                                                                    1
                                                                                </option>
                                                                            </select></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <%--form ajout--%>
                                        <div tabindex="-1" id="modalLarge" class="modal fade">
                                            <div role="document" class="modal-dialog">
                                                <div class="modal-content"><a href="#" data-dismiss="modal"
                                                                              aria-label="Close" class="close"><em
                                                        class="icon ni ni-cross"></em></a>
                                                    <div class="modal-header"><h5 class="modal-title">
                                                        Ajouter un utilisateur
                                                    </h5> <!----></div>
                                                    <div class="modal-body">
                                                        <form method="post" action="/user?post=1" >
                                                            <div class="row g-4">
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="prenom"
                                                                                                   class="form-label">prenom</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="text" name="prenom" id="prenom"
                                                                                class="form-control"> <!----></div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="nom"
                                                                                                   class="form-label">nom</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="text" name="nom" id="nom"
                                                                                class="form-control"> <!----></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row g-4">
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="email"
                                                                                                   class="form-label">email</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="text" name="email" id="email"
                                                                                class="form-control"> <!----></div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="matricule"
                                                                                                   class="form-label">matricule</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="text" name="matricule"
                                                                                id="matricule" class="form-control">
                                                                            <!----></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row g-4">
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="email"
                                                                                                   class="form-label">telephone</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="text" name="telephone"
                                                                                id="telephone" class="form-control">
                                                                            <!----></div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="default-06"
                                                                                                   class="form-label">Roles</label>
                                                                        <div class="form-control-wrap">
                                                                            <div class="form-control-select">
                                                                                <select
                                                                                        id="default-06"
                                                                                        name="role"
                                                                                        class="form-control">
                                                                                    <option value="default_option">
                                                                                        Choisir le role
                                                                                    </option>
                                                                                    <option value="jury">
                                                                                        jury
                                                                                    </option>
                                                                                    <option value="professeur">
                                                                                        professeur
                                                                                    </option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row g-4">
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="password"
                                                                                                   class="form-label">password</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="password" name="password"
                                                                                id="password" class="form-control">
                                                                            <!----></div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="adresse"
                                                                                                   class="form-label">adresse</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="text" name="adresse"
                                                                                id="adresse" class="form-control">
                                                                            <!----></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row g-4">

                                                                <div class="col-lg-12">
                                                                    <div class="form-group"><label for="default-06"
                                                                                                   class="form-label">Etablissement</label>
                                                                        <div class="form-control-wrap">
                                                                            <div class="form-control-select">
                                                                                <select
                                                                                        id="default-09"
                                                                                        name="etablissement"
                                                                                        class="form-control">
                                                                                    <option value="default_option">
                                                                                        Choisir l'établissement
                                                                                    </option>
                                                                                    <option value="default_option">
                                                                                        Choisir l'établissement
                                                                                    </option>
                                                                                    <c:forEach items="${list_etablissements}" var="etablissement">
                                                                                        <option value="${etablissement.id}">
                                                                                                ${etablissement.nom}
                                                                                        </option>
                                                                                    </c:forEach >
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row g-4">
                                                                <div class="col-12">
                                                                    <div class="form-group">
                                                                        <button type="button" data-dismiss="modal"
                                                                                class="btn btn-danger">
                                                                            fermer
                                                                        </button>
                                                                        <button type="submit" class="btn btn-success"
                                                                                style="display: none;">
                                                                            Modifier
                                                                        </button>
                                                                        <button type="submit" class="btn btn-primary">
                                                                            Créer
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <%--form ajout--%>
                                    <%--form modif--%>
                                        <div tabindex="-1" id="modalLargeEdit" class="modal fade">
                                            <div role="document" class="modal-dialog">
                                                <div class="modal-content"><a href="#" data-dismiss="modal"
                                                                              aria-label="Close" class="close"><em
                                                        class="icon ni ni-cross"></em></a>
                                                    <div class="modal-header"><h5 class="modal-title">
                                                        Modifier un utilisateur
                                                    </h5> <!----></div>
                                                    <div class="modal-body">
                                                        <form method="post" action="/user?post=2">
                                                            <input type="number" hidden name="idE" id="idE" value="${userUpdate.id}"
                                                            class="form-control"/>
                                                            <div class="row g-4">
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="prenomE"
                                                                                                   class="form-label">prenom</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="text" name="prenomE" id="prenomE"
                                                                                class="form-control" value="${userUpdate.prenom}"> <!----></div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="nomE"
                                                                                                   class="form-label">nom</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="text" name="nomE" id="nomE" value="${userUpdate.nom}"
                                                                                class="form-control"> <!----></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row g-4">
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="emailE"
                                                                                                   class="form-label">email</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="text" name="emailE" id="emailE"
                                                                        value="${userUpdate.email}"
                                                                                class="form-control"> <!----></div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="matriculeE"
                                                                                                   class="form-label">matricule</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="text" name="matricule"
                                                                        value="${userUpdate.matricule}"
                                                                                id="matriculeE" class="form-control">
                                                                            <!----></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row g-4">
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="telephoneE"
                                                                                                   class="form-label">telephone</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="text" name="telephoneE"
                                                                        value="${userUpdate.telephone}"
                                                                                id="telephoneE" class="form-control">
                                                                            <!----></div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="default-025"
                                                                                                   class="form-label">Roles</label>
                                                                        <div class="form-control-wrap">
                                                                            <div class="form-control-select">
                                                                                <select
                                                                                        id="default-025"
                                                                                        name="roleE"

                                                                                        class="form-control">
                                                                                    <option selected value="${userUpdate.role}">
                                                                                        Choisir le role
                                                                                    </option>
                                                                                    <option value="jury">
                                                                                        jury
                                                                                    </option>
                                                                                    <option value="professeur">
                                                                                        professeur
                                                                                    </option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row g-4">
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="passwordE"
                                                                                                   class="form-label">password</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="password" name="passwordE"
                                                                        value="${userUpdate.password}"
                                                                                id="passwordE" class="form-control">
                                                                            <!----></div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="form-group"><label for="adresseE"
                                                                                                   class="form-label">adresse</label>
                                                                        <div class="form-control-wrap"><input
                                                                                type="text" name="adresseE"
                                                                        value="${userUpdate.adresse}"
                                                                                id="adresseE" class="form-control">
                                                                            <!----></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row g-4">

                                                                <div class="col-lg-12">
                                                                    <div class="form-group"><label for="default-019"
                                                                                                   class="form-label">Etablissement</label>
                                                                        <div class="form-control-wrap">
                                                                            <div class="form-control-select">
                                                                                <select
                                                                                        id="default-019"
                                                                                        name="etablissementE"
                                                                                value="${userUpdate.etablissement}"
                                                                                        class="form-control">
                                                                                    <option value="default_option">
                                                                                        Choisir l'établissement
                                                                                    </option>
                                                                                <c:forEach items="${list_etablissements}" var="etablissement">

                                                                                    <option value="${etablissement.id}">
                                                                                            ${etablissement.nom}
                                                                                    </option>
                                                                                    </c:forEach >
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row g-4">
                                                                <div class="col-12">
                                                                    <div class="form-group">
                                                                        <button type="button" data-dismiss="modal"
                                                                                class="btn btn-danger">
                                                                            fermer
                                                                        </button>
                                                                        <button type="submit" class="btn btn-success"
                                                                               >
                                                                            Modifier
                                                                        </button>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <%--form modif--%>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
            <!-- content @e  -->
        </div>
        <!-- wrap @e  -->
    </div>
</div>

<script>
    $(document).ready(function(){

        $("#message").show().fadeOut(10000).css("color","blue")
    });
</script>
<script>
    function newModal() {
        //this.editmode = false;
        $("#modalLarge").modal("show");
    }

    function editModal(user) {
        //  this.editmode = true;
        //  this.form.reset();
       // console.log(user.email)
        $("#modalLargeEdit").modal("show");
        //this.form.fill(user);
       // this.form.role = user.role_names[0];
    }
</script>
<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>
