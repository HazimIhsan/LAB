<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Car Loan Calculation Result</title>
    <style>
        body { font-family: serif; }
        .result-box {
            border: 1px solid #a9a9a9;
            padding: 20px;
            width: 350px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <h2>Perform Car Loan Calculation</h2>

    <div class="result-box">
        <h3>Calculation Results:</h3>
        <%
            // 1. Retrieve the data from the HTML form
            String amountStr = request.getParameter("amount");
            String periodStr = request.getParameter("period");

            // 2. Validate inputs to prevent errors
            if (amountStr != null && periodStr != null && !amountStr.isEmpty()) {
                try {
                    // Convert string inputs to numeric values
                    double principal = Double.parseDouble(amountStr);
                    int years = Integer.parseInt(periodStr);
                    
                    // 3. Calculation Logic (Assuming a standard 3% interest rate)
                    double interestRate = 0.03; 
                    
                    double totalInterest = principal * interestRate * years;
                    double totalLoan = principal + totalInterest;
                    double monthlyInstallment = totalLoan / (years * 12);
        %>
                    <p><strong>Loan Amount:</strong> RM <%= String.format("%.2f", principal) %></p>
                    <p><strong>Loan Period:</strong> <%= years %> Years</p>
                    <p><strong>Total Interest (3% p.a.):</strong> RM <%= String.format("%.2f", totalInterest) %></p>
                    <hr>
                    <p><strong>Total Repayment:</strong> RM <%= String.format("%.2f", totalLoan) %></p>
                    <p><strong>Monthly Installment:</strong> RM <%= String.format("%.2f", monthlyInstallment) %></p>
        <%
                } catch (NumberFormatException e) {
                    // Handle case where user types letters instead of numbers
                    out.println("<p style='color:red;'>Error: Please enter a valid numeric amount.</p>");
                }
            } else {
                out.println("<p style='color:red;'>Error: Form data is missing.</p>");
            }
        %>
        
        <br>
        <a href="calculateCarLoan.html"><button>Calculate Again</button></a>
    </div>

    <div style="margin-top: 10px; font-size: 0.9em;">
        &copy;2026-Syaffiq
    </div>

</body>
</html>