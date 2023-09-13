<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<% 
    if(session.getAttribute("listaproducto")==null){
        ArrayList<Producto>lisaux=new ArrayList<Producto>();
        session.setAttribute("listaproducto", lisaux);
    }
    ArrayList<Producto>lista=(ArrayList<Producto>)session.getAttribute("listaproducto");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            div{
                border: 2px solid black;
                width: 450px;
                height: 150px;
     
                padding-left: 10px;
                border-radius: 5px
            }
            th{
                color: #D3105E;
            }
            .nuevo{
                color:#AF3D13;
                padding-top:20px;
                padding-bottom:20px;
                padding-left:40px;
                padding-right:40px;
                background-color:#2ECC71;
                border-color: #F2FF33;
                border-width: 3px;
                border-style: solid;
                border-radius:10px;
                text-decoration: none;
                padding: 10px;
                font-size: 30px;
                
            }
            .nombre{
                color:#8433FF;
                font-size: 35px;
                padding: 6px;
                font-family: "Lucida Console", Arial, monoespacio;
            }
            
        </style>
    </head>
    <body>
        <center>
            <div>
            <h2> PRIMER PARCIAL TEM-742</h2>
            <h2>Efrain Flores Rojas</h2>
            <h3> CARNET: 6137632</h3>
            </div>
          <h1> Gestion de Productos</h1>
       
        <a class="nuevo" href="MainServlet?op=nuevo">Nuevo registro</a>
        <br> <br>
        <table border="2">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantida</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th colspan="2">Acciones</th>
                
            </tr>
            <%
                if(lista !=null){
                    for(Producto item: lista){ 
            %>
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getDescripcion()%></td>
                <td><%=item.getCantidad()%></td>
                <td><%=item.getPrecio()%></td>
                <td><%=item.getCategoria()%></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%=item.getId()%>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%=item.getId()%>" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a>
                </td>
            </tr>
            <%  
                    }
                }
            %>
        </table>
        
        </center>
    </body>
</html>
