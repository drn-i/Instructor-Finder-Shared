<%@ page import="java.sql.ResultSet" %>
<%@ page import="connection.DatabaseConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="english">
<head>
    <title>Update Account</title>
    <meta property="og:title" content="Update Account" />
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
    <link href="./update-account-page.css" rel="stylesheet" />

    <div class="update-account-page-container">
        <div class="update-account-page-backgroundgradientlight">

            <%
                //Check whether the instructor in session or not
                if (session.getAttribute("id") != null && session.getAttribute("id") != ""){
                    if (session.getAttribute("username") != null && session.getAttribute("username") != ""){
            %>
            <!-- Get Instructor Details -->
            <%
                ResultSet instructorInformations = DatabaseConnection.GetResultFromSQLQuery("SELECT * FROM instructors WHERE instructor_id=" + session.getAttribute("id") + "");
                instructorInformations.next();
            %>

                <!-- Welcome Title -->
                <h1 class="update-account-page-welcome-title">
                    <span class="update-account-page-text">Welcome,</span>
                    <br />
                </h1>

                <!-- Instructor Name Title -->
                <h1 class="update-account-page-intructor-name-title">
                    <span><%= instructorInformations.getString("FirstName")%> <%= instructorInformations.getString("LastName")%></span>
                    <br />
                </h1>

                <!-- Main Container -->
                <div class="update-account-page-main-container">
                    <div class="update-account-page-title-container">

                        <!-- Title Container -->
                        <h1 class="update-account-page-update-account-title">
                            <span class="update-account-page-text04">
                              Update Login Credentials
                            </span>
                            <br />
                        </h1>

                        <!-- Account Update Error Title -->
                        <%
                            String updateError = (String) session.getAttribute("update-error");
                            if (updateError != null){
                                session.removeAttribute("update-error");
                        %>
                        <h1 class="update-account-page-updateError-title">
                            <span class="update-account-page-updateError-title">Error Occurs While Updating Account Credentials for Instructor</span>
                            <br />
                        </h1>
                        <%
                            }
                        %>

                        <!-- Password Length Error Title -->
                        <%
                            String passwordLengthError = (String) session.getAttribute("length-error");
                            if (passwordLengthError != null){
                                session.removeAttribute("length-error");
                        %>
                        <h1 class="update-account-page-updateError-title">
                            <span class="update-account-page-updateError-title">Error, The maximum new password length is 20</span>
                            <br />
                        </h1>
                        <%
                            }
                        %>

                        <!-- Old Password Incorrect Error Title -->
                        <%
                            String oldPasswordError = (String) session.getAttribute("oldpass-error");
                            if (oldPasswordError != null){
                                session.removeAttribute("oldpass-error");
                        %>
                        <h1 class="update-account-page-updateError-title">
                            <span class="update-account-page-updateError-title">Error, The old password is incorrect!</span>
                            <br />
                        </h1>
                        <%
                            }
                        %>

                        <!-- Update Form -->
                        <form id="informationsForm" name="informationsForm" class="update-account-page-update-account-form" action="updateaccount" method="post">

                            <!-- Username -->
                            <div class="update-account-page-username-form">
                                <label for="usernameInput" class="update-account-page-username-label">Username</label>
                                <input type="text" id="usernameInput" name="usernameInput" accept=";" required="true" placeholder="username" class="update-account-page-username-input input" value="<%= session.getAttribute("username")%>"/>
                            </div>
                            <!-- Old Password -->
                            <div class="update-account-page-old-password-form">
                                <label for="oldPasswordInput" class="update-account-page-old-password-label"><span>Old Password</span><br /></label>
                                <input type="password" id="oldPasswordInput" name="oldPasswordInput" accept=";" required="true" placeholder="Old Password" class="update-account-page-old-passwrod-input input"/>
                            </div>

                            <!-- New Password -->
                            <div class="update-account-page-new-password-form">
                                <label for="newPasswordInput" class="update-account-page-new-password-label"><span>New Password</span><br /></label>
                                <input type="password" id="newPasswordInput" name="newPasswordInput" accept=";" required="true" placeholder="New Password" class="update-account-page-new-passwrod-input input"/>
                            </div>

                            <!-- Update Button -->
                            <button id="updateButton" name="updateButton" type="submit" class="update-account-page-update-button button">
                                <span>
                                    <span class="update-account-page-text11">Update</span>
                                    <br />
                                </span>
                            </button>

                        </form>
                    </div>
                </div>
            <%}}
            else {
                response.sendRedirect("login-page.jsp");
            }%>

        </div>
        <div class="update-account-page-bottombars">
            <div class="update-account-page-bottomnavcustom">
                <div class="update-account-page-navigationbar">
                    <div class="update-account-page-home-button">
                        <a href="/">
                            <img
                                    alt="image"
                                    src="public/external/page%20icon%205.svg"
                                    class="update-account-page-image"
                            />
                        </a>
                    </div>
                    <div class="update-account-page-instructor-button">
                        <a href="/instructors?department=cnet">
                            <img
                                    alt="image"
                                    src="public/external/page%20icon%202.svg"
                                    class="update-account-page-image1"
                            />
                        </a>
                    </div>
                    <div class="update-account-page-contact-button">
                        <a href="/contact">
                            <img
                                    alt="image"
                                    src="public/external/page%20icon%203.svg"
                                    class="update-account-page-image2"
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