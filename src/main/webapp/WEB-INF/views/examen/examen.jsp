<%--
  Created by IntelliJ IDEA.
  examen: bass-codeur
  Date: 07-09-2021
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../../../header.jsp" ></jsp:include>

<div class="wrapper">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <div class="container-fluid">
            <div class="conteiner">
                <c:if test="${examenUpdate.id != null}">
                    <script>
                        $(document).ready(function(){
                            $("#modalLargeEdit").modal("show");
                        });
                    </script>
                </c:if>


                <c:if test="${message=='1'}">
                    <div id="message" class="alert alert-success">examen créé avec success</div>
                </c:if>
                <c:if test="${delete=='1'}">
                    <div id="message" class="alert alert-danger">examen supprimé avec success</div>
                </c:if>
                <c:if test="${okedit=='1'}">
                    <div id="message" class="alert alert-primary">examen modifié avec success</div>
                </c:if>




                <div class="row mt-5" >

                    <!-- row responsive table -->
                    <section class="container">
                        <div class="row mt-5">
                            <div class="col-md-12">
                                <div class="card card-warning card-outline">
                                    <div class="card-header">
                                        <h3 class="card-title">Examen</h3>

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
                                                <th>date</th>
                                                <th>année</th>

                                                <th>action</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${list_examens}" var="examen">
                                                <tr>
                                                    <td>${examen.libelle }</td>
                                                    <td>${examen.date }</td>
                                                    <td>${examen.annee }</td>
                                                    <td>
                                                        <a href="/examen?update=${examen.id}">
                                                            <i class="fa fa-edit blue"></i>edit
                                                        </a>/
                                                        <a href="/examen?delete=${examen.id}">
                                                            <i class="fa fa-edit blue"></i>Delete
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
                                Ajouter un examen
                            </h5> <!----></div>
                            <div class="modal-body">
                                <form method="post" action="/examen?post=1">
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
                <%--form ajout--%>
                <%--form modif--%>
                <div tabindex="-1" id="modalLargeEdit" class="modal fade">
                    <div role="document" class="modal-dialog">
                        <div class="modal-content"><a href="#" data-dismiss="modal"
                                                      aria-label="Close" class="close"><em
                                class="icon ni ni-cross"></em></a>
                            <div class="modal-header"><h5 class="modal-title">
                                Modifier un examen
                            </h5> <!----></div>
                            <div class="modal-body">
                                <form method="post" action="/examen?post=2">
                                    <input
                                            type="number" hidden name="idE" id="idE" value="${examenUpdate.id}"
                                            class="form-control"/>
                                    <div class="row g-4">
                                        <div class="col-lg-6">
                                            <div class="form-group"><label for="nomE"
                                                                           class="form-label">nom</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="nomE" id="nomE" value="${examenUpdate.libelle}"
                                                        class="form-control"> <!----></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group"><label for="codeE"
                                                                           class="form-label">code</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="codeE" id="codeE"
                                                        class="form-control" value="${examenUpdate.code}"> <!----></div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row g-4">
                                        <div class="col-lg-6">
                                            <div class="form-group"><label for="villeE"
                                                                           class="form-label">ville</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="villeE" id="villeE"
                                                        value="${examenUpdate.ville}"
                                                        class="form-control"> <!----></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group"><label for="adresseE"
                                                                           class="form-label">adresse</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="adresseE"
                                                        value="${examenUpdate.adresse}"
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
                <%--form modif--%>
            </div>
        </div>


        <!-- Modal -->
    </div>
    <!-- /.content-wrapper -->
</div>
<jsp:include page="../../../footer.jsp" ></jsp:include>

