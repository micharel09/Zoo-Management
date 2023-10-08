<%-- Document : update_anime Created on : Oct 6, 2023, 9:57:04 AM Author : ADMIN --%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
            </head>

            <body>
                <form action="updateanimal" method="post" enctype="multipart/form-data">

                    <input type="hidden" name="animalid" value="${aa.animal_id}" />
                    <br>
                    Name
                    <input type="text" name="name" value="${aa.name}" />
                    <br>
                    Day In
                    <input type="date" name="dayin" value="${aa.dayin}">
                    <br>

                    Animal_Cage_ID
                    <input type="text" name="animalcageid" value="${aa.animalcage_id}" />
                    <br>

                    <input type="submit" value="Submit" />

                </form>
            </body>

            </html>