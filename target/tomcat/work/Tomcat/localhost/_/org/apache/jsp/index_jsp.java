/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2021-09-10 13:47:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>JSP - Hello World</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/css/adminlte.min.css\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"nk-content \">\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("        <div class=\"nk-content-inner\">\n");
      out.write("            <div class=\"nk-content-body\">\n");
      out.write("                <div id=\"app\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"nk-content-inner\">\n");
      out.write("                        <div class=\"nk-content-body\">\n");
      out.write("                            <div class=\"nk-block-head nk-block-head-sm\">\n");
      out.write("                                <div class=\"nk-block-between\">\n");
      out.write("                                    <div class=\"nk-block-head-content\"><h3\n");
      out.write("                                            class=\"nk-block-title page-title\">\n");
      out.write("                                        Liste des Examens\n");
      out.write("                                    </h3>\n");
      out.write("                                        <div class=\"nk-block-des text-soft\"><p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${nombre}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"nk-block\">\n");
      out.write("                                <div class=\"card card-bordered card-stretch\">\n");
      out.write("                                    <div class=\"card-inner-group\">\n");
      out.write("                                        <div class=\"card-inner position-relative card-tools-toggle\">\n");
      out.write("                                            <div class=\"card-title-group\">\n");
      out.write("                                                <div class=\"card-tools mr-n1\">\n");
      out.write("                                                    <ul class=\"btn-toolbar gx-1\">\n");
      out.write("                                                        <li><a href=\"#\" data-target=\"search\"\n");
      out.write("                                                               class=\"btn btn-icon search-toggle toggle-search\"><em\n");
      out.write("                                                                class=\"icon ni ni-search\"></em></a></li>\n");
      out.write("                                                    </ul>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"card-inner p-0\">\n");
      out.write("                                            <div class=\"nk-tb-list nk-tb-ulist\">\n");
      out.write("                                                <div class=\"nk-tb-item nk-tb-head\">\n");
      out.write("                                                    <div class=\"nk-tb-col\"><span\n");
      out.write("                                                            class=\"sub-text\">examen</span></div>\n");
      out.write("                                                    <div class=\"nk-tb-col tb-col-mb\"><span\n");
      out.write("                                                            class=\"sub-text\">date</span></div>\n");
      out.write("                                                    <div class=\"nk-tb-col tb-col-lg\"><span\n");
      out.write("                                                            class=\"sub-text\">ann??e academique</span></div>\n");
      out.write("\n");
      out.write("                                                    <div class=\"nk-tb-col tb-col-md\"><span\n");
      out.write("                                                            class=\"sub-text\">Actions</span></div>\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                                ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        ");
      out.write("\n");
      out.write("                        ");
      out.write("\n");
      out.write("                        ");
      out.write("\n");
      out.write("                        ");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</h1>\n");
      out.write("<br/>\n");
      out.write("<a href=\"hello-servlet\">Hello Servlet</a>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/js/adminlte.min.js\"></script>\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fforEach_005f0.setParent(null);
    // /index.jsp(63,48) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/index.jsp(63,48) '${list_examens}'",_el_expressionfactory.createValueExpression(_jspx_page_context.getELContext(),"${list_examens}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
    // /index.jsp(63,48) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setVar("examen");
    int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
    try {
      int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
      if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                    <div class=\"nk-tb-item\">\n");
          out.write("\n");
          out.write("                                                        <div class=\"nk-tb-col tb-col-mb\"><span\n");
          out.write("                                                                class=\"tb-amount\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${examen.libelle}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</span>\n");
          out.write("                                                        </div>\n");
          out.write("                                                        <div class=\"nk-tb-col tb-col-mb\"><span\n");
          out.write("                                                                class=\"tb-amount\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${examen.date}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</span>\n");
          out.write("                                                        </div>\n");
          out.write("                                                        <div class=\"nk-tb-col tb-col-md\">\n");
          out.write("                                                            <span>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${examen.annee}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</span></div>\n");
          out.write("\n");
          out.write("\n");
          out.write("                                                        <div class=\"nk-tb-col nk-tb-col-tools\">\n");
          out.write("                                                            <ul class=\"nk-tb-actions gx-1\">\n");
          out.write("                                                                <li class=\"nk-tb-action-hidden\"><a\n");
          out.write("                                                                        href=\"/examen?update=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${examen.id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("\"\n");
          out.write("\n");
          out.write("                                                                        data-toggle=\"tooltip\"\n");
          out.write("                                                                        data-placement=\"top\"\n");
          out.write("                                                                        title=\"Modifier\"\n");
          out.write("                                                                        class=\"btn btn-trigger btn-icon\"><em\n");
          out.write("                                                                        class=\"icon ni ni-edit-fill\"></em></a>\n");
          out.write("                                                                </li>\n");
          out.write("                                                                <li class=\"nk-tb-action-hidden\"><a\n");
          out.write("                                                                        href=\"/examen?delete=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${examen.id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("\"\n");
          out.write("                                                                        data-toggle=\"tooltip\"\n");
          out.write("                                                                        data-placement=\"top\"\n");
          out.write("                                                                        title=\"Supprimer\"\n");
          out.write("                                                                        class=\"btn btn-trigger btn-icon\"><em\n");
          out.write("                                                                        class=\"icon ni ni-archived-fill\"></em></a>\n");
          out.write("                                                                </li>\n");
          out.write("\n");
          out.write("                                                            </ul>\n");
          out.write("                                                        </div>\n");
          out.write("                                                    </div>\n");
          out.write("                                                ");
          int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (java.lang.Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_005fforEach_005f0.doFinally();
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
    }
    return false;
  }
}
