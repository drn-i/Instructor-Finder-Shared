<%@ page import="model.Instructor" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="english">
<head>
    <title>IT Instructors</title>
    <meta property="og:title" content="IT Instructors" />
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
            background-color: #faeeef;

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
    <link href="./cs-instructor-page.css" rel="stylesheet" />

    <div class="cs-instructor-page-container">
        <div class="cs-instructor-page-backgroundgradientlight">
            <h1 class="cs-instructor-page-title1">
                <span class="cs-instructor-page-text">Instructors</span>
                <br />
            </h1>
            <div class="cs-instructor-page-container1">

                <button type="button" class="cs-instructor-page-it-button button">
                    <a href="/instructors?department=cs">
                        <span class="cs-instructor-page-text08">
                        <span>CS</span>
                        <br />
                        </span>
                    </a>
                </button>

                <button type="button" class="cs-instructor-page-cnet-button button">
                    <a href="/instructors?department=cnet">
                        <span class="cs-instructor-page-text05">
                        <span>CNET</span>
                        <br />
                        </span>
                    </a>
                </button>

                <button type="button" class="cs-instructor-page-cs-button button">
                    <span class="cs-instructor-page-text02">
                        <span>IT</span>
                        <br />
                    </span>
                </button>

            </div>

            <!-- Instructors List Container -->
            <div class="cs-instructor-page-container2">

                <!-- Instructor Container -->
                <%
                    List<Instructor> instructorList = (List<Instructor>)request.getAttribute("instructorList");
                    if (instructorList != null && !instructorList.isEmpty()){
                        for (Instructor instructor : instructorList){%>
                <div class="cs-instructor-page-instructor-container">
                    <a href="/instructor?id=<%=instructor.getInstructorID()%>">
                        <img
                                alt="image"
                                src="public/external/<%=instructor.getPhotoLink()%>"
                                class="cs-instructor-page-image"
                        />
                        <h3 class="cs-instructor-page-text11">
                            <span><%=instructor.getFirstName()%> <%=instructor.getLastName()%></span>
                            <br />
                        </h3>
                        <span class="cs-instructor-page-text14">
                     <span><%=instructor.getDepartment()%></span>
                     <br />
                     </span>
                    </a>
                </div>
                <%}
                }%>

            </div>
        </div>
        <div class="cs-instructor-page-bottombars">
            <div class="cs-instructor-page-bottomnavcustom">
                <div class="cs-instructor-page-navigationbar">
                    <div class="cs-instructor-page-home-button">
                        <a href="/">
                            <img
                                    alt="image"
                                    src="public/external/page%20icon%205.svg"
                                    class="cs-instructor-page-image08"
                            />
                        </a>
                    </div>
                    <div class="cs-instructor-page-instructor-button">
                        <img
                                alt="image"
                                src="public/external/page%20icon%204.svg"
                                class="cs-instructor-page-image09"
                        />
                    </div>
                    <div class="cs-instructor-page-contact-button">
                        <a href="/contact">
                            <img
                                    alt="image"
                                    src="public/external/page%20icon%203.svg"
                                    class="cs-instructor-page-image10"
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
