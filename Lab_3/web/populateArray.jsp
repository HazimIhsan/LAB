<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Populate Array - Salesman Data</title>
    <style>
        table {
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            border: 1px solid black;
            padding: 8px 20px;
            text-align: center;
        }
        th {
            background-color: bisque;
        }
    </style>
</head>
<body>

    <center>
        <h2>Table 3.1: Salesman's Sale</h2>

        <%
            // 1. Store the headers in a 1D array
            String[] headers = {"Salesman", "Jan", "Feb", "Mar"};

            // 2. Store the table information into a 2D array
            String[][] salesData = {
                {"Salesman 1", "2,500", "2,100", "2,200"},
                {"Salesman 2", "2,000", "1,900", "2,400"},
                {"Salesman 3", "1,800", "2,200", "2,450"}
            };
        %>

        <table>
            <thead>
                <tr>
                    <% for(int i = 0; i < headers.length; i++) { %>
                        <th><%= headers[i] %></th>
                    <% } %>
                </tr>
            </thead>
            <tbody>
                <% for(int i = 0; i < salesData.length; i++) { %>
                    <tr>
                        <% for(int j = 0; j < salesData[i].length; j++) { %>
                            <td><%= salesData[i][j] %></td>
                        <% } %>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </center>

</body>
</html>