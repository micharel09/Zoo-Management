<%-- 
    Document   : Schedule_Select_Cage_Manager
    Created on : Oct 24, 2023, 3:40:43 PM
    Author     : ACER
--%>

<%@page import="sample.foodingschedule.AnimalCageDTO"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
        
        <%
            List<AnimalCageDTO> listCage = (List<AnimalCageDTO>) session.getAttribute("LIST_ANIMAL_CAGE");;
            if (listCage != null && listCage.size() > 0) {

        %>
        <table border="1">
            <thead>
                <tr>
                    <th>Name Cage</th>
                     
                </tr>
            </thead>
            <tbody>
                <%for (AnimalCageDTO Cage : listCage) {%>

                <tr>
                    <td><%=Cage.getName()%></td>
                  
            <form action="Foodingschedule_MainController">
                <td>
                    <input type="hidden" name="ID_Animal_Cage" value="<%=Cage.getAnimalCage_ID()%>"/>
                    <input type="hidden" name="Name_Cage" value="<%=Cage.getName()%>"/>
                    <input type="submit" name="action" name="Select_Schecdule_Trainer" value="Select_Schecdule_Trainer"/>
                </td>
            </form>
        </tr>

        <% }%>
    </tbody>
</table>
            <form
            action="importexcel_feedingSchedule_controller"
            method="post"
            enctype="multipart/form-data"
          >
            <div class="flex mb-2">
              <p class="mt-2">
                Choose Excel file(<span style="color: red">.xls</span>):
              </p>
              <input
                type="file"
                name="excelFile"
                class="flex w-1/4 ml-2 text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:placeholder-gray-400"
              />
              <input
                class="middle none center rounded-lg py-3 px-3 text-xs uppercase transition-all hover:bg-green-500/10 active:bg-green-500/30 disabled:pointer-events-none disabled:opacity-50 disabled:shadow-none"
                data-ripple-dark="true"
                type="submit"
                value="Import"
              />
            </div>
          </form>
          <!-- end import -->

<%}%>
</body>
</html>
