


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../../../header.jsp" ></jsp:include>

<div class="wrapper">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <div class="container-fluid">
            <div class="conteiner">
                <c:if test="${commissionUpdate.id != null}">
                    <script>
                        $(document).ready(function(){
                            $("#modalLargeEdit").modal("show");
                        });
                    </script>
                </c:if>   <c:if test="${list_profs[0].id != null}">
                    <script>
                        $(document).ready(function(){
                            $("#modalLargeAffecter").modal("show");
                        });
                    </script>
                </c:if>


                <c:if test="${message=='1'}">
                    <div id="message" class="alert alert-success">commission créé avec success</div>
                </c:if>
                <c:if test="${delete=='1'}">
                    <div id="message" class="alert alert-danger">commission supprimé avec success</div>
                </c:if>
                <c:if test="${okedit=='1'}">
                    <div id="message" class="alert alert-primary">commission modifié avec success</div>
                </c:if> <c:if test="${etat=='1'}">
                <div id="message" class="alert alert-primary">commission est débloqué avec success</div>
            </c:if>

                <c:if test="${etat=='2'}">
                    <div id="message" class="alert alert-danger">commission est bloqué avec success</div>
                </c:if>


                <div class="row mt-5" >

                    <!-- row responsive table -->
                    <section class="container">
                        <div class="row mt-5">
                            <div class="col-md-12">
                                <div class="card card-warning card-outline">
                                    <div class="card-header">
                                        <h3 class="card-title">Commission</h3>

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

                                                <th>commission</th>
                                                <th>action</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <c:forEach items="${list_commissions}" var="commission">
                                                <tr>
                                                    <td> ${commission.nomC }</td>
                                                    <td>
                                                        <a href="/commission?update=${commission.id}">
                                                            <i class="fa fa-edit blue"></i>edit
                                                        </a>/
                                                        <a href="/commission?delete=${commission.id}">
                                                            <i class="fa fa-edit blue"></i>delete
                                                        </a>
                                                        /
                                                        <a href="/commission?affecter=${commission.id}">
                                                            <i class="fa fa-edit blue"></i>affecter
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
                                Ajouter un commission
                            </h5> <!----></div>
                            <div class="modal-body">
                                <form method="post" action="/commission?post=1">
                                    <div class="row g-4">

                                        <div class="col-lg-12">
                                            <div class="form-group"><label for="nom"
                                                                           class="form-label">nom</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="nom" id="nom"
                                                        class="form-control"> <!----></div>
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
                                                <button type="submit" class="btn btn-primary"
                                                >
                                                    Creer
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
                                Modifier un commission
                            </h5> <!----></div>
                            <div class="modal-body">
                                <form method="post" action="/commission?post=2">
                                    <input
                                            type="number" hidden name="idE" id="idE" value="${commissionUpdate.id}"
                                            class="form-control"/>
                                    <div class="row g-4">
                                        <div class="col-lg-12">
                                            <div class="form-group"><label for="nomE"
                                                                           class="form-label">nom</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" name="nomE" id="nomE" value="${commissionUpdate.nomC}"
                                                        class="form-control"> <!----></div>
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
                <div tabindex="-1" id="modalLargeAffecter" class="modal fade">
                    <div role="document" class="modal-dialog">
                        <div class="modal-content"><a href="#" data-dismiss="modal"
                                                      aria-label="Close" class="close"><em
                                class="icon ni ni-cross"></em></a>
                            <div class="modal-header"><h5 class="modal-title">
                                Modifier un commission
                            </h5> <!----></div>
                            <div class="modal-body">
                                <form method="post" action="/commission?post=3">
                                    <input
                                            type="number" hidden name="idE" id="idE" value="${commissionUpdate.id}"
                                            class="form-control"/>
                                    <div class="row g-4">
                                        <div class="col-lg-12">
                                            <div class="form-group"><label for="nomE"
                                                                           class="form-label">nom</label>
                                                <div class="form-control-wrap"><input
                                                        type="text" disabled name="nomE" id="nomE" value="${commissionUpdate.nomC}"
                                                        class="form-control"> <!----></div>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="row g-4">

                                        <div class="col-lg-12">
                                            <div class="form-group"><label for="default-019"
                                                                           class="form-label">professeur</label>
                                                <div class="form-control-wrap">
                                                    <div class="form-control-select">
                                                        <select
                                                                id="default-019"
                                                                name="prof_id"
                                                                value="${}"
                                                                class="form-control">
                                                            <option value="">
                                                                Choisir un prof
                                                            </option>
                                                            <c:forEach items="${list_profs}" var="prof">

                                                                <option value="${prof.id}">
                                                                        ${prof.nom}
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

            </div>
        </div>


        <!-- Modal -->
    </div>
    <!-- /.content-wrapper -->
</div>
<jsp:include page="../../../footer.jsp" ></jsp:include>


