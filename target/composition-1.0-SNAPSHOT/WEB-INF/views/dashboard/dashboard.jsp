<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="wrapper">
    <jsp:include page="../../tags/header.jsp" ></jsp:include>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>${page}</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#"  onclick="newModal()"> add
                            </a><a href="/users">Home</a></li>
                            <li class="breadcrumb-item active">${page}</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Liste des Utilisateur</h3>

                                <div class="card-tools">
                                    <div class="input-group input-group-sm" style="width: 150px;">
                                        <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body table-responsive p-0" >
                                <table class="table table-head-fixed text-nowrap">
                                    <thead>
                                    <tr>
                                        <th>User</th>
                                        <th>matricule</th>
                                        <th>Email</th>
                                        <th>Etablissement</th>
                                        <th>Fonction</th>
                                        <th>Status</th>
                                        <th>roles</th>

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
                                                </c:if></td>                                        </tr>
                                    </c:forEach>


                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /add modal -->
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
            Launch demo modal
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
</div>
<jsp:include page="../../tags/footer.jsp" ></jsp:include>
<script>
    function newModal() {
        //this.editmode = false;
        $("#exampleModalCenter").modal("show");

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
