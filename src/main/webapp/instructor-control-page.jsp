<%@ page import="java.sql.ResultSet" %>
<%@ page import="connection.DatabaseConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="english">
<head>
    <title>Instructor Page</title>
    <meta property="og:title" content="Instructor Page"/>
    <meta name="robots" content="noindex" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta property="twitter:card" content="summary_large_image" />

    <style data-tag="reset-style-sheet">
        html {  line-height: 1.15;}body {  margin: 0;}* {  box-sizing: border-box;  border-width: 0;  border-style: solid;}p,li,ul,pre,div,h1,h2,h3,h4,h5,h6,figure,blockquote,figcaption {  margin: 0;  padding: 0;}button {  background-color: transparent;}button,input,optgroup,select,textarea {  font-family: inherit;  font-size: 100%;  line-height: 1.15;  margin: 0;}button,select {  text-transform: none;}button,[type="button"],[type="reset"],[type="submit"] {  -webkit-appearance: button;}button::-moz-focus-inner,[type="button"]::-moz-focus-inner,[type="reset"]::-moz-focus-inner,[type="submit"]::-moz-focus-inner {  border-style: none;  padding: 0;}button::-moz-focus-inner,[type="button"]::-moz-focus-inner,[type="reset"]::-moz-focus-inner,[type="submit"]::-moz-focus-inner {  outline: 1px dotted ButtonText;}a {  color: inherit;  text-decoration: inherit;}input {  padding: 2px 4px;}img {  display: block;}html { scroll-behavior: smooth  }
    </style>
    <style data-tag="default-style-sheet">
        html {
            font-family: Inter;
            font-size: 16px;
        }

        body {
            font-weight: 400;
            font-style:normal;
            text-decoration: none;
            text-transform: none;
            letter-spacing: normal;
            line-height: 1.15;
            color: var(--dl-color-gray-black);
            background-color: var(--dl-color-gray-white);

        }
    </style>
    <link
            rel="stylesheet"
            href="https://unpkg.com/animate.css@4.1.1/animate.css"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Exo+2:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
            data-tag="font"
    />
    <link
            rel="stylesheet"
            href="https://unpkg.com/@teleporthq/teleport-custom-scripts/dist/style.css"
    />
</head>
<body>
<link rel="stylesheet" href="./style.css" />
<div>
    <link href="./instructor-control-page.css?v=1" rel="stylesheet" />

    <div class="instructor-control-page-container">
        <div class="instructor-control-page-backgroundgradientlight">

            <%
                //Check whether the instructor in session or not
                if (session.getAttribute("id") != null && session.getAttribute("id") != ""){
                    if (session.getAttribute("username") != null && session.getAttribute("username") != ""){
            %>
            <!-- Get Instructor Details -->
            <%
                ResultSet instructorInformations = DatabaseConnection.GetResultFromSQLQuery("SELECT * FROM instructors WHERE instructor_id=" + session.getAttribute("id") + "");
                instructorInformations.next();

                ResultSet instructorSchedule = DatabaseConnection.GetInstructorSchedule((int) session.getAttribute("id"));
            %>

            <!-- Welcome Title -->
            <h1 class="instructor-control-page-welcome-title">
                <span class="instructor-control-page-text">Welcome,</span>
                <br />
            </h1>

            <!-- Instructor Name Title -->
            <h1 class="instructor-control-page-intructor-name-title">
                <span><%= instructorInformations.getString("FirstName")%> <%= instructorInformations.getString("LastName")%></span>
                <br />
            </h1>

            <a href="/updateaccount">
                <h1 class="instructor-control-page-account-update-title">
                    <span>Update Account Settings</span>
                    <br />
                </h1>
            </a>

            <!-- Main Container -->
            <div class="instructor-control-page-main-container">

                <!-- Image Upload Container -->
                <div class="instructor-control-page-image-update-container">

                    <h1 class="instructor-control-page-image-update-title">
                        <span class="instructor-control-page-text04">Image Update</span>
                        <br />
                    </h1>

                    <h1 class="instructor-control-page-image-update-title1">
                        <span class="instructor-control-page-text66">Upload a square image to make it appear better</span>
                        <br>
                        <span class="instructor-control-page-text66">Formats allowed are PNG, JPG - Max Size: 2MB</span>
                        <br>
                    </h1>
                    <!-- Image Update Done Title -->
                    <%
                        String imageUpdated = (String) session.getAttribute("image-updated");
                        if (imageUpdated != null){
                            session.removeAttribute("image-updated");
                    %>
                    <h1 class="instructor-control-page-informations-updatedDone-text">
                        <span class="instructor-control-page-informations-updatedDone-text">The Image has been Updated successfully!</span>
                        <br />
                    </h1>
                    <%
                        }
                    %>

                    <!-- Image Update Error Title -->
                    <%
                        String imageUpdatedError = (String) session.getAttribute("image-update-error");
                        if (imageUpdatedError != null){
                            session.removeAttribute("image-update-error");
                    %>
                    <h1 class="instructor-control-page-informations-updatedError-text">
                        <span class="instructor-control-page-informations-updatedError-text">An Error Occurs While Trying to Update Your Image</span>
                        <br />
                    </h1>
                    <%
                        }
                    %>

                    <!-- Image Format Error Title -->
                    <%
                        String imageFormatError = (String) session.getAttribute("image-format-error");
                        if (imageFormatError != null){
                            session.removeAttribute("image-format-error");
                    %>
                    <h1 class="instructor-control-page-informations-updatedError-text">
                        <span class="instructor-control-page-informations-updatedError-text">Error, The Formats allowed are PNG OR JPG</span>
                        <br />
                    </h1>
                    <%
                        }
                    %>

                    <!-- Image Size Error Title -->
                    <%
                        String imageSizeError = (String) session.getAttribute("image-size-error");
                        if (imageSizeError != null){
                            session.removeAttribute("image-size-error");
                    %>
                    <h1 class="instructor-control-page-informations-updatedError-text">
                        <span class="instructor-control-page-informations-updatedError-text">Error, The Max Allowed Image Size is 2MB</span>
                        <br />
                    </h1>
                    <%
                        }
                    %>

                    <!-- Image Update Form -->
                    <div class="instructor-control-page-image-form-container">
                        <img alt="image" src="public/external/<%=instructorInformations.getString("PhotoLink")%>" class="instructor-control-page-image"/>
                        <form id="imageUpdateForm" name="imageUpdateForm" class="instructor-control-page-informations-form" action="imageupdatehandler" method="post" enctype="multipart/form-data">

                            <div class="instructor-control-page-image-form">
                                <input type="file" id="imageInput" name="imageInput" accept="image/jpeg, image/png, image/jpg" placeholder="Choose Image" class="instructor-control-page-image-input input" required/>
                            </div>

                            <button id="updateButton" name="updateButton" type="submit" class="instructor-control-page-update-button button">Update</button>
                        </form>
                    </div>
                </div>

                <!-- Informations Container -->
                <div class="instructor-control-page-informations-container">

                    <!-- Informations Main Title -->
                    <h1 class="instructor-control-page-information-title">
                        <span class="instructor-control-page-text06">Informations</span>
                        <br/>
                    </h1>

                    <!-- Update Done Title -->
                    <%
                        String updateDone = (String) session.getAttribute("update-done");
                        if (updateDone != null){
                            session.removeAttribute("update-done");
                    %>
                    <h1 class="instructor-control-page-informations-updatedDone-text">
                        <span class="instructor-control-page-informations-updatedDone-text">Your information has been updated!</span>
                        <br />
                    </h1>
                    <%
                        }
                    %>

                    <!-- Update Error Title -->
                    <%
                        String updateError = (String) session.getAttribute("update-error");
                        if (updateError != null){
                            session.removeAttribute("update-error");
                    %>
                    <h1 class="instructor-control-page-informations-updatedError-text">
                        <span class="instructor-control-page-informations-updatedError-text">An Error Occurs While Trying to Update Your Informations</span>
                        <br />
                    </h1>
                    <%
                        }
                    %>

                    <!-- Informations Form -->
                    <form id="informationsForm" name="informationsForm" class="instructor-control-page-informations-form1" action="instructorcontrol" method="post">

                        <!-- First Name -->
                        <div class="instructor-control-page-first-name-form">
                            <label for="firstNameInput" class="instructor-control-page-first-name-label">First Name</label>
                            <input type="text" id="firstNameInput" name="firstNameInput" accept=";" placeholder="Enter Your First Name" class="instructor-control-page-first-name-input input" value="<%=instructorInformations.getString("FirstName")%>" required/>
                        </div>
                        <!-- Last Name -->
                        <div class="instructor-control-page-last-name-form">
                            <label for="lastNameInput" class="instructor-control-page-last-name-label">Last Name</label>
                            <input type="text" id="lastNameInput" name="lastNameInput" accept=";" placeholder="Enter Your Last Name" class="instructor-control-page-last-name-input input" value="<%=instructorInformations.getString("LastName")%>" required/>
                        </div>
                        <!-- Email -->
                        <div class="instructor-control-page-email-form">
                            <label for="emailInput" class="instructor-control-page-email-label">Email Address</label>
                            <input type="email" id="emailInput" name="emailInput" accept=";" placeholder="Enter Your Email" class="instructor-control-page-email-input input" value="<%=instructorInformations.getString("Social2")%>"/>
                        </div>
                        <!-- Phone Number -->
                        <div class="instructor-control-page-phone-form">
                            <label for= "phoneInput" class="instructor-control-page-phone-label">Phone Number</label>
                            <input type="tel" id="phoneInput" name="phoneInput" accept=";" placeholder="Enter Your Phone Number" class="instructor-control-page-phone-input input" value="<%=instructorInformations.getString("Social1")%>"/>
                        </div>
                        <!-- Save Button -->
                        <button type="submit" id="saveButton" name="saveButton" class="instructor-control-page-save-button button">Save</button>

                    </form>
                </div>

                <!-- Schedule Container -->
                <div class="instructor-control-page-schedule-container">

                    <h1 class="instructor-control-page-add-schedule-title">
                        <span class="instructor-control-page-text08">Add to Schedule</span>
                        <br />
                    </h1>

                    <!-- Add Done Title -->
                    <%
                        String added = (String) session.getAttribute("added");
                        if (added != null){
                            session.removeAttribute("added");
                    %>
                    <h1 class="instructor-control-page-informations-updatedDone-text">
                        <span class="instructor-control-page-informations-updatedDone-text">The row has been added successfully</span>
                        <br />
                    </h1>
                    <%
                        }
                    %>

                    <!-- Add Error Title -->
                    <%
                        String addError = (String) session.getAttribute("addError");
                        if (addError != null){
                            session.removeAttribute("addError");
                    %>
                    <h1 class="instructor-control-page-informations-updatedError-text">
                        <span class="instructor-control-page-informations-updatedError-text">An Error Occurs While Trying to Add Your Schedule Row</span>
                        <br />
                    </h1>
                    <%
                        }
                    %>

                    <!-- Add Schedule Form -->
                    <form id="scheduleForm" name="scheduleForm" class="instructor-control-page-schedule-form" action="InstructorSchedule" method="post">

                        <div class="instructor-control-page-schedule-row-input">
                            <!-- Day -->
                            <div class="instructor-control-page-day-form">
                                <label for="dayInput" class="instructor-control-page-day-label"><span>Day</span><br /></label>
                                <select id="dayInput" name="dayInput" class="instructor-control-page-day-input input" required>
                                    <option value="Sunday">Sunday</option>
                                    <option value="Monday">Monday</option>
                                    <option value="Tuesday">Tuesday</option>
                                    <option value="Wednesday">Wednesday</option>
                                    <option value="Thursday">Thursday</option>
                                    <option value="Friday">Friday</option>
                                    <option value="Saturday">Saturday</option>
                                </select>
                            </div>
                            <!-- Time -->
                            <div class="instructor-control-page-time-form">
                                <label for="timeInput" class="instructor-control-page-time-label">Time</label>
                                <input type="time" id="timeInput" name="timeInput" accept=";" placeholder="Enter a time" class="instructor-control-page-time-input input" required/>
                            </div>
                            <!-- Title -->
                            <div class="instructor-control-page-title-form">
                                <label for="titleInput" class="instructor-control-page-title-label">Title</label>
                                <input type="text" id="titleInput" name="titleInput" accept=";" placeholder="E.g. course, office hour" class="instructor-control-page-title-input input" required/>
                            </div>

                        </div>
                    </form>
                    <!-- Add Button -->
                    <button type="submit" id="addButton" name="addButton" class="instructor-control-page-add-button button" form="scheduleForm">
                        <span><span class="instructor-control-page-text13">Add</span><br /></span>
                    </button>

                </div>

                <!-- Schedule Details Container -->
                <div class="instructor-control-page-schedule-details-container">

                    <h1 class="instructor-control-page-schedule-details-title">
                        <span class="instructor-control-page-text15">Schedule Details</span><br/>
                    </h1>

                    <!-- Delete Done Title -->
                    <%
                        String deleted = (String) session.getAttribute("delete-done");
                        if (deleted != null){
                            session.removeAttribute("delete-done");
                    %>
                    <h1 class="instructor-control-page-informations-updatedDone-text">
                        <span class="instructor-control-page-informations-updatedDone-text">Row Deleted</span>
                        <br />
                    </h1>
                    <%
                        }
                    %>

                    <!-- Delete Error Title -->
                    <%
                        String deleteError = (String) session.getAttribute("delete-error");
                        if (deleteError != null){
                            session.removeAttribute("delete-error");
                    %>
                    <h1 class="instructor-control-page-informations-updatedError-text">
                        <span class="instructor-control-page-informations-updatedError-text">An Error Occurs While Trying to Delete the Row</span>
                        <br />
                    </h1>
                    <%
                        }
                    %>


                    <div class="instructor-control-page-container1">
                        <div class="instructor-control-page-container2">

                            <style>
                                table {width: 100%; border-collapse: collapse; margin-top: 20px;}
                                th, td {border: 1px solid #ddd; padding: 10px; text-align: left;}
                                th {background-color: #dcdcdc;}
                            </style>

                            <!-- Schedule Table -->
                            <% if (instructorSchedule != null) {%>
                                <table>
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Day</th>
                                        <th>Time</th>
                                        <th>Title</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <% int i = 1; while (instructorSchedule.next()){%>
                                        <tr>
                                            <td><%=i%></td>
                                            <td><%=instructorSchedule.getString("day")%></td>
                                            <td><%=instructorSchedule.getString("time")%></td>
                                            <td><%=instructorSchedule.getString("title")%></td>
                                            <td><a href="/InstructorSchedule?rowid=<%=instructorSchedule.getInt("rowID")%>"><span style="text-decoration: underline">delete</span></a></td>
                                        </tr>
                                    <% i++;
                                    } %>

                                    </tbody>
                                </table>
                            <% } %>

                        </div>
                    </div>
                </div>

            </div>

            <%}}
                else {
                    response.sendRedirect("login-page.jsp");
                }%>


        </div>

        <div class="instructor-control-page-bottombars">
            <div class="instructor-control-page-bottomnavcustom">
                <div class="instructor-control-page-navigationbar">
                    <div class="instructor-control-page-home-button">
                        <a href="/">
                            <img
                                    alt="image"
                                    src="public/external/page%20icon%205.svg"
                                    class="instructor-control-page-image1"
                            />
                        </a>
                    </div>
                    <div class="instructor-control-page-instructor-button">
                        <a href="/instructors?department=cnet">
                            <img
                                    alt="image"
                                    src="public/external/page%20icon%202.svg"
                                    class="instructor-control-page-image1"
                            />
                        </a>
                    </div>
                    <div class="instructor-control-page-contact-button">
                        <a href="/contact">
                            <img
                                    alt="image"
                                    src="public/external/page%20icon%203.svg"
                                    class="instructor-control-page-image1"
                            />
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>

