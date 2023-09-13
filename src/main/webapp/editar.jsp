<%@page import="com.emergentes.modelo.Producto"%>
<%
    Producto reg=(Producto)request.getAttribute("miobjproducto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de producto</title>
        <style>
            .id,.tarea{
                width: 250px;
                height: 30px;
                padding: 5px;
                border-radius: 5px;
                border: 1px solid #39c;
                font-size: 20px;
            }
            .id1,.ta2,.co3{
                font-size: 20px;
                text-align: right;
                padding-right: 10px;
            }
            .enviar{
                color:#FEFFFF;
                background-color:#2ECC71;
                border-color: #2ECC71;
                border-width: 3px;
                border-style: solid;
                border-radius:10px;
                padding: 10px;
                font-size: 20px;
                width:260px;
                
            }
        </style>
    </head>
    <body>
        <center>
        <h1>Registro de Producto</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td class="id1">ID</td>
                    <td> <input class="id" type="text" name="id" value="<%=reg.getId()%>" size="2" readonly> </td>
                </tr>
                <tr>
                    <td class="ta2"> Descripcion </td>
                    <td> <input class="tarea" type="text" name="descripcion" value="<%=reg.getDescripcion()%>" > </td>
                </tr>
                <tr>
                    <td class="co3">Cantidad</td>
                    <td> <input class="tarea" type="text" name="cantidad" value="<%=reg.getCantidad()%>" > </td>
                </tr
                <tr>
                    <td class="co3">Precio</td>
                    <td> <input class="tarea" type="text" name="precio" value="<%=reg.getPrecio()%>" > </td>
                </tr
                <tr>
                    <td class="co3">Categoria</td>
                    <td> <input class="tarea" type="text" name="categoria" value="<%=reg.getCategoria()%>" > </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="enviar" type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
        
        </center>
    </body>
</html>
