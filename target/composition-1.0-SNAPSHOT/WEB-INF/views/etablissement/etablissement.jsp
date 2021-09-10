<%--
&lt;%&ndash;
  Created by IntelliJ IDEA.
  etablissement: bass-codeur
  Date: 07-09-2021
  Time: 15:31
  To change this template use File | Settings | File Templates.
&ndash;%&gt;
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>${page}</title>
    <jsp:include page="/WEB-INF/tags/layout-head.jsp"></jsp:include>

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

                                <div class="nk-content-inner">
                                        <div class="nk-content-body">
                                            <div class="nk-block-head nk-block-head-sm">
                                                <div class="nk-block-between">
                                                    <div class="nk-block-head-content"><h3
                                                            class="nk-block-title page-title">
                                                        Liste des établissement
                                                    </h3>
                                                        <div class="nk-block-des text-soft"><p>${nombre}</p>
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
                                                                            class="sub-text">etablissement</span></div>
                                                                    <div class="nk-tb-col tb-col-mb"><span
                                                                            class="sub-text">code</span></div>
                                                                    <div class="nk-tb-col tb-col-lg"><span
                                                                            class="sub-text">adresse</span></div>
                                                                    <div class="nk-tb-col tb-col-lg"><span
                                                                            class="sub-text">ville</span></div>
                                                                    <div class="nk-tb-col tb-col-md"><span
                                                                            class="sub-text">Actions</span></div>
                                                                </div>

                                                                <c:forEach items="${list_etablissements}" var="etablissement">
                                                                    <div class="nk-tb-item">

                                                                        <div class="nk-tb-col tb-col-mb"><span
                                                                                class="tb-amount">${etablissement.nom}</span>
                                                                        </div>
                                                                        <div class="nk-tb-col tb-col-mb"><span
                                                                                class="tb-amount">${etablissement.code}</span>
                                                                        </div>
                                                                        <div class="nk-tb-col tb-col-md">
                                                                            <span>${etablissement.adresse}</span></div>

                                                                        <div class="nk-tb-col tb-col-lg">
                                                                            <span>${etablissement.ville}</span></div>

                                                                        <div class="nk-tb-col nk-tb-col-tools">
                                                                            <ul class="nk-tb-actions gx-1">
                                                                                <li class="nk-tb-action-hidden"><a
                                                                                        href="/etablissement?update=${etablissement.id}"

                                                                                        data-toggle="tooltip"
                                                                                        data-placement="top"
                                                                                        title="Modifier"
                                                                                        class="btn btn-trigger btn-icon"><em
                                                                                        class="icon ni ni-edit-fill"></em></a>
                                                                                </li>
                                                                                <li class="nk-tb-action-hidden"><a
                                                                                        href="/etablissement?delete=${etablissement.id}"
                                                                                        data-toggle="tooltip"
                                                                                        data-placement="top"
                                                                                        title="Supprimer"
                                                                                        class="btn btn-trigger btn-icon"><em
                                                                                        class="icon ni ni-archived-fill"></em></a>
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

                                        &lt;%&ndash;form ajout&ndash;%&gt;
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
                                    &lt;%&ndash;form ajout&ndash;%&gt;
                                    &lt;%&ndash;form modif&ndash;%&gt;
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
                                    &lt;%&ndash;form modif&ndash;%&gt;
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
        $("#modalLarge").modal("show");
    }

</script>
<jsp:include page="/WEB-INF/tags/footer.jsp"></jsp:include>

</body>
</html>
--%>
