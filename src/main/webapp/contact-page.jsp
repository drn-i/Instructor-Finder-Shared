<%@ page import="model.Contact" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="english">
<head>
    <title>Contacts</title>
    <meta property="og:title" content="Contacts" />
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
    <link href="./contact-page.css" rel="stylesheet" />

    <div class="contact-page-container">
        <div class="contact-page-backgroundgradientlight">
            <h1 class="contact-page-contact-title">
                <span class="contact-page-text">Contact</span>
                <br />
            </h1>

            <!-- Contacts List Container -->
            <div class="contact-page-contacts-container">

                <!-- Contact Container -->
                <%
                    List<Contact> contactList = (List<Contact>) request.getAttribute("contacts");
                    if (contactList != null && !contactList.isEmpty()){
                        for (Contact contact : contactList){%>
                            <div class="contact-page-contact-container">
                                <span class="contact-page-contact-name">
                                <span><%=contact.getContactName()%></span>
                                <br />
                                </span>
                                <span class="contact-page-contact-details">
                                <span><%=contact.getContactDetails()%></span>
                                <br />
                                </span>
                            </div>


                        <%}
                    }%>

            </div>
        </div>
        <div class="contact-page-bottombars">
            <div class="contact-page-bottomnavcustom">
                <div class="contact-page-navigationbar">
                    <div class="contact-page-home-button">
                        <a href="/">
                            <img
                                    alt="image"
                                    src="public/external/page%20icon%205.svg"
                                    class="contact-page-image"
                            />
                        </a>
                    </div>
                    <div class="contact-page-instructor-button">
                        <a href="/instructors?department=cnet">
                            <img
                                    alt="image"
                                    src="public/external/page%20icon%206.svg"
                                    class="contact-page-image1"
                            />
                        </a>
                    </div>
                    <div class="contact-page-contact-button">
                        <img
                                alt="image"
                                src="public/external/page%20icon%207.svg"
                                class="contact-page-image2"
                        />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
