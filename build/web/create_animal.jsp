<%-- Document : update_anime Created on : Oct 6, 2023, 9:57:04 AM Author : ADMIN --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
            </head>

            <body>
                <form action="createanimal" method="post" enctype="multipart/form-data">

                    <input type="hidden" name="animalid" />
                    <br>
                    Name
                    <input type="text" name="name" />
                    <br>
                    Day In
                    <input type="date" name="dayin">
                    <br>


                    <label>Photo</label> <br />

                    <input type="file" class="form-control" name="photo" placeholder="Enter photo">
                    <br>
                    Animal_Cage_ID
                    <select name="animalcageid">
                        <c:forEach items="${cage}" var="c">
                            <option>${c.animalcage_id}</option>
                        </c:forEach>
                    </select>
                    <br>


                    <input type="submit" value="Submit" />

                </form>
            </body>

            </html>