<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Lab2 MainPage</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            padding: 20px; /* General page border padding */
        }
        .header, .footer {
            background-color: #f7e1c1; /* Tan/peach background from image */
            text-align: center;
            padding: 10px 0;
        }
        .header h1 {
            margin: 0;
        }
        .footer p {
            margin: 0;
        }
        .main-content {
            background-color: #ffffff; /* White center background */
            padding: 20px;
        }
        /* Style the JSP explanatory text with red color as shown in image */
        .jsp-explanation {
            color: red;
            text-align: left;
        }
        /* Style the table from the first image */
        table {
            border-collapse: collapse;
            width: auto;
            margin: 20px 0;
            border: 1px solid black;
        }
        caption {
            font-weight: bold;
            font-size: 1.2em;
            margin-bottom: 10px;
        }
        th, td {
            border: 1px solid black;
            padding: 8px 15px;
            text-align: left;
        }
        th {
            background-color: #f0f0f0; /* Light gray for table headers */
        }
    </style>
</head>
<body>
    <jsp:include page="headerPage.jsp"/>

    <div class="main-content">
        <p class="jsp-explanation">Java Server Page (JSP) is a technology for controlling the content or appearance of Web pages through the use of servlets, small programs that are specified in the Web page and run on the Web server to modify the Web page before it is sent to the user who requested it.</p>

        <table>
            <caption>Table 3.1: Salesman's Sale</caption>
            <tr>
                <th>Salesman</th>
                <th>Jan</th>
                <th>Feb</th>
                <th>Mar</th>
            </tr>
            <tr>
                <td>Salesman 1</td>
                <td>2,500</td>
                <td>2,100</td>
                <td>2,200</td>
            </tr>
            <tr>
                <td>Salesman 2</td>
                <td>2,000</td>
                <td>1,900</td>
                <td>2,400</td>
            </tr>
            <tr>
                <td>Salesman 3</td>
                <td>1,800</td>
                <td>2,200</td>
                <td>2,450</td>
            </tr>
        </table>
    </div>

    <jsp:include page="footerPage.jsp" />
</body>
</html>