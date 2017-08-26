<%-- 
    Document   : index
    Created on : 08-25-2017, 06:44:26 PM
    Author     : JMagoSV
--%>

<%@page import="com.sv.udb.controladores.TiposCtrl"%>
<%@page import="com.sv.udb.modelos.Tipos"%>
<%@page import="com.sv.udb.modelos.Tipos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
        <script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
        <script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <h4>Guía 04 - POO2</h4>
                    <form method="POST" action="TipoServ">
                        <input type="hidden" id="codi" name="codi" value="${codi}"/>
                        <div class="form-group">
                            <label for="nomb" class="contro-label">Nombre:</label>
                            <div class="input-group">
                                <span class="input-group-addon"> 1 </span>
                                <input class="form-control" id="nomb" name="nomb" value="${nomb}" />
                            </div>
                        </div>
                        <input type="submit" name="TipoBton" value="Guardar" class="btn btn-sm btn-success" />
                        <input type="submit" name="TipoBton" value="Modificar" class="btn btn-sm btn-success" />
                   <h1>${mensAler}</h1>
                    <br><br>
                    <form method="POST" action="TipoServ">
                          <div class="well">
    <table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>Nombre tipo</th>
          <th style="width: 36px;"></th>
        </tr>
      </thead>
      <%
                 for(Tipos temp : new TiposCtrl().cons())
                 {
                     
            %>
      <tbody>
        <tr>
          <td><input id="<%=temp.getCodiTipo()%>" name="codiradi" type="radio" value="<%=temp.getCodiTipo()%>"/>
                     <label for="<%=temp.getCodiTipo()%>"></label></td>
         <td><%=temp.getNombTipo()%></td>
          <td>
               <%  }
                     
            %>
              <a href="user.html"><i class="icon-pencil"></i></a>
              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
          </td>
        </tr>
       </tbody>
    </table> 
              <input type="submit" name="TipoBton" value="Consultar" class="btn btn-sm btn-success" />
                         
                         <input type="submit" name="TipoBton" value="Eliminar" class="btn btn-sm btn-success" />

                                      
        
                    <!--LA Tabla-->
                  
                         
                        
</div>

                     </form>
                    
                    
                </div>
            </div>
        </div>
    </body>
</html>

