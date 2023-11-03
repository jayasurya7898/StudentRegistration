<!DOCTYPE html>
<html>
<head>
    <title>Student Registration and List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <!-- Student Registration Form -->
        <form id="student-form">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" required pattern="[A-Za-z0-9]+">
            </div>

            <div class="form-group">
                <label for="mobile">Mobile:</label>
                <input type="text" class "form-control" id="mobile" required pattern="\d{10}">
            </div>

            <div class="form-group">
                <label>Gender:</label>
                <div class="form-check">
                    <input type="radio" class="form-check-input" name="gender" value="Male" required> Male
                </div>
                <div class="form-check">
                    <input type="radio" class="form-check-input" name="gender" value="Female" required> Female
                </div>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" required>
            </div>

            <div class="form-group">
                <label for="address">Address:</label>
                <textarea class="form-control" id="address"></textarea>
            </div>

            <div class="form-group">
                <label for="dob">DOB:</label>
                <input type="datetime-local" class="form-control" id="dob" required>
            </div>

            <div class="form-group">
                <label for="class">Class:</label>
                <input type="text" class="form-control" id="class" required pattern="[A-Za-z0-9]+">
            </div>

            <div class="form-group">
                <label for="father-name">Father Name:</label>
                <input type="text" class="form-control" id="father-name" required pattern="[A-Za-z]+">
            </div>

            <div class="form-group">
                <label for="mother-name">Mother Name:</label>
                <input type="text" class="form-control" id="mother-name" required pattern="[A-Za-z]+">
            </div>

            <button type="button" class="btn btn-primary" id="save-button">Save</button>
        </form>

        <!-- Student List -->
        <h1>Student List</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Mobile</th>
                <!-- Add more table headers for other student attributes -->
            </tr>
            <tr th:each="student : ${students}">
                <td th:text="${student.id}"></td>
                <td th:text="${student.name}"></td>
                <td th:text="${student.mobile}"></td>
                <!-- Add more table cells for other student attributes -->
            </tr>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#save-button").click(function() {
                if (validateForm()) {
                    alert("Form is valid. You can submit the data.");
                    // Add code to submit the form data to the server here
                } else {
                    alert("Form validation failed. Please check your input.");
                }
            });

            function validateForm() {
                // Validate each form field here
                var valid = true;

                // Name (Alpha Numeric)
                var name = $("#name").val();
                if (!/^[A-Za-z0-9]+$/.test(name)) {
                    valid = false;
                }

                // Mobile (Numeric, 10 digits)
                var mobile = $("#mobile").val();
                if (!/^\d{10}$/.test(mobile)) {
                    valid = false;
                }

                // Gender (Radio button)
                if (!$("input[name='gender']:checked").length > 0) {
                    valid = false;
                }

                // Email (Email validation)
                var email = $("#email").val();
                if (!/\S+@\S+\.\S+/.test(email)) {
                    valid = false;
                }

                // Additional field validations can be added similarly

                return valid;
            }
        });
    </script>
</body>
</html>
