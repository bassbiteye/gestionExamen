<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../../../header.jsp" ></jsp:include>

<div class="wrapper">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

            <div class="container-fluid">
        <div class="conteiner">
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

            <div class="row mt-5" >

                <!-- row responsive table -->
                <section class="container">
                    <div class="row mt-5">
                        <div class="col-md-12">
                            <div class="card card-warning card-outline">
                                <div class="card-header">
                                    <h3 class="card-title">utilisateur</h3>

                                    <div class="card-tools">
                                        <button class="btn btn-success" onClick="newModal()">
                                            <i class="fas fa-user-plus fa fw"></i> Ajouter
                                        </button>
                                    </div>
                                </div>

                                <!-- /.card-header -->
                                <div class="card-body table-responsive p-1">
                                    <table
                                            id="table"
                                            class="table table-striped table-bordered"
                                            style="width:100%"
                                    >
                                        <thead>
                                        <tr>
                                            <th>User</th>
                                            <th>matricule</th>
                                            <th>Email</th>
                                            <th>Etablissement</th>
                                            <th>Fonction</th>
                                            <th>Status</th>
                                            <th>action</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        <c:forEach items="${list_users}" var="user">
                                            <tr>
                                                <td>${user.prenom } ${user.nom }</td>
                                                <td>${user.matricule}</td>
                                                <td>${user.email}</td>

                                                <td>${user.etablissement}</td>
                                                <td>${user.role}</td>
                                                <td> <c:if test="${user.etat=='1'}">
                                                    <span class=" txt txt-success">Actif</span>
                                                </c:if>
                                                    <c:if test="${user.etat=='0'}">
                                                        <span class="txt txt-danger">Inactif</span>
                                                    </c:if></td>
                                                <td>
                                                    <a href="/user?update=${user.id}">
                                                        <i class="fa fa-edit blue"></i>k
                                                    </a>/
                                                    <a href="/user?delete=${user.id}">
                                                    <i class="fa fa-edit blue"></i>k
                                                </a>
                                                /
                                                <a href="/user?etat=${user.id}">
                                                    <i class="fa fa-trash red"></i>
                                                </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                    <!-- /row responsive table -->
                </section>



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

                                                        <option value="">
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
                                                        <option value="">
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


        <!-- Modal -->
    </div>
    <!-- /.content-wrapper -->
</div>
<jsp:include page="../../../footer.jsp" ></jsp:include>

