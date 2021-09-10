<%@ page  language="java" contentType="text/html; charset=UTF-8"  %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/css/adminlte.min.css">

</head>
<body>
<div class="nk-content ">
    <div class="container-fluid">
        <div class="nk-content-inner">
            <div class="nk-content-body">
                <div id="app">


                    <div class="nk-content-inner">
                        <div class="nk-content-body">
                            <div class="nk-block-head nk-block-head-sm">
                                <div class="nk-block-between">
                                    <div class="nk-block-head-content"><h3
                                            class="nk-block-title page-title">
                                        Liste des Examens
                                    </h3>
                                        <div class="nk-block-des text-soft"><p>${nombre}</p>
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
                                        </div>
                                        <div class="card-inner p-0">
                                            <div class="nk-tb-list nk-tb-ulist">
                                                <div class="nk-tb-item nk-tb-head">
                                                    <div class="nk-tb-col"><span
                                                            class="sub-text">examen</span></div>
                                                    <div class="nk-tb-col tb-col-mb"><span
                                                            class="sub-text">date</span></div>
                                                    <div class="nk-tb-col tb-col-lg"><span
                                                            class="sub-text">année academique</span></div>

                                                    <div class="nk-tb-col tb-col-md"><span
                                                            class="sub-text">Actions</span></div>
                                                </div>

                                                <c:forEach items="${list_examens}" var="examen">
                                                    <div class="nk-tb-item">

                                                        <div class="nk-tb-col tb-col-mb"><span
                                                                class="tb-amount">${examen.libelle}</span>
                                                        </div>
                                                        <div class="nk-tb-col tb-col-mb"><span
                                                                class="tb-amount">${examen.date}</span>
                                                        </div>
                                                        <div class="nk-tb-col tb-col-md">
                                                            <span>${examen.annee}</span></div>


                                                        <div class="nk-tb-col nk-tb-col-tools">
                                                            <ul class="nk-tb-actions gx-1">
                                                                <li class="nk-tb-action-hidden"><a
                                                                        href="/examen?update=${examen.id}"

                                                                        data-toggle="tooltip"
                                                                        data-placement="top"
                                                                        title="Modifier"
                                                                        class="btn btn-trigger btn-icon"><em
                                                                        class="icon ni ni-edit-fill"></em></a>
                                                                </li>
                                                                <li class="nk-tb-action-hidden"><a
                                                                        href="/examen?delete=${examen.id}"
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
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--form ajout--%>
                        <%--form ajout--%>
                        <%--form modif--%>
                        <%--form modif--%>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>

</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<script src="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/js/adminlte.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>