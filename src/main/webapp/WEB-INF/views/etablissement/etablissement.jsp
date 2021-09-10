


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../../../header.jsp" ></jsp:include>

<div class="wrapper">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <div class="container-fluid">
            <div class="conteiner">
                <c:if test="${etablissementUpdate.id != null}">
                    <script>
                        $(document).ready(function(){
                            $("#modalLargeEdit").modal("show");
                        });
                    </script>
                </c:if>


                <c:if test="${message=='1'}">
                    <div id="message" class="alert alert-success">etablissement créé avec success</div>
                </c:if>
                <c:if test="${delete=='1'}">
                    <div id="message" class="alert alert-danger">etablissement supprimé avec success</div>
                </c:if>
                <c:if test="${okedit=='1'}">
                    <div id="message" class="alert alert-primary">etablissement modifié avec success</div>
                </c:if> <c:if test="${etat=='1'}">
                <div id="message" class="alert alert-primary">etablissement est débloqué avec success</div>
            </c:if>

                <c:if test="${etat=='2'}">
                    <div id="message" class="alert alert-danger">etablissement est bloqué avec success</div>
                </c:if>


                <div class="row mt-5" >

                    <!-- row responsive table -->
                    <section class="container">
                        <div class="row mt-5">
                            <div class="col-md-12">
                                <div class="card card-warning card-outline">
                                    <div class="card-header">
                                        <h3 class="card-title">Etablissement</h3>

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

                                                <th>Etablissement</th>
                                                <th>code</th>
                                                <th>adresse</th>
                                                <th>ville</th>
                                                <th>action</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <c:forEach items="${list_etablissements}" var="etablissement">
                                                <tr>
                                                    <td> ${etablissement.nom }</td>
                                                    <td>${etablissement.code}</td>
                                                    <td>${etablissement.adresse}</td>

                                                    <td>${etablissement.ville}</td>
                                                    <td>
                                                        <a href="/etablissement?update=${etablissement.id}">
                                                            <i class="fa fa-edit blue"></i>edit
                                                        </a>/
                                                        <a href="/etablissement?delete=${etablissement.id}">
                                                            <i class="fa fa-edit blue"></i>delete
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

                <div tabindex="-1" id="modalLarge" class="modal fade">
                    <div role="document" class="modal-dialog">
                        <div class="modal-content"><a href="#" data-dismiss="modal"
                                                      aria-label="Close" class="close"><em
                                class="icon ni ni-cross"></em></a>
                            <div class="modal-header"><h5 class="modal-title">
                                Ajouter un etablissement
                            </h5> <!----></div>
                            <div class="modal-body">
                                <form method="post" action="/etablissement?post=1">
                                    <div class="row g-4">

                                        <div class="col-lg-6">
                                            <div class="form-group"><label for="nom"
                                                                           class="form-label">nom</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="nom" id="nom"
                                                        class="form-control"> <!----></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group"><label for="code"
                                                                           class="form-label">code</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="code" id="code"
                                                        class="form-control"> <!----></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row g-4">
                                        <div class="col-lg-6">
                                            <div class="form-group"><label for="ville"
                                                                           class="form-label">ville</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="ville" id="ville"
                                                        class="form-control"> <!----></div>
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
                                        <div class="col-12">
                                            <div class="form-group">
                                                <button type="button" data-dismiss="modal"
                                                        class="btn btn-danger">
                                                    fermer
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

                <div tabindex="-1" id="modalLargeEdit" class="modal fade">
                    <div role="document" class="modal-dialog">
                        <div class="modal-content"><a href="#" data-dismiss="modal"
                                                      aria-label="Close" class="close"><em
                                class="icon ni ni-cross"></em></a>
                            <div class="modal-header"><h5 class="modal-title">
                                Modifier un etablissement
                            </h5> <!----></div>
                            <div class="modal-body">
                                <form method="post" action="/etablissement?post=2">
                                    <input
                                            type="number" hidden name="idE" id="idE" value="${etablissementUpdate.id}"
                                            class="form-control"/>
                                    <div class="row g-4">
                                        <div class="col-lg-6">
                                            <div class="form-group"><label for="nomE"
                                                                           class="form-label">nom</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="nomE" id="nomE" value="${etablissementUpdate.nom}"
                                                        class="form-control"> <!----></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group"><label for="codeE"
                                                                           class="form-label">code</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="codeE" id="codeE"
                                                        class="form-control" value="${etablissementUpdate.code}"> <!----></div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row g-4">
                                        <div class="col-lg-6">
                                            <div class="form-group"><label for="villeE"
                                                                           class="form-label">ville</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="villeE" id="villeE"
                                                        value="${etablissementUpdate.ville}"
                                                        class="form-control"> <!----></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group"><label for="adresseE"
                                                                           class="form-label">adresse</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="adresseE"
                                                        value="${etablissementUpdate.adresse}"
                                                        id="adresseE" class="form-control">
                                                    <!----></div>
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

            </div>
        </div>


        <!-- Modal -->
    </div>
    <!-- /.content-wrapper -->
</div>
<jsp:include page="../../../footer.jsp" ></jsp:include>


