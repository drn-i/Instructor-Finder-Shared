<%@ page import="java.sql.ResultSet" %>
<%@ page import="connection.DatabaseConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="english">
<head>
  <title>${firstName} ${lastName} Schedule</title>
  <meta property="og:title" content="Instructor Schedule" />
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
  <link href="./instructor-schedule-page.css" rel="stylesheet" />

  <div class="instructor-schedule-page-container">

    <div class="instructor-schedule-page-backgroundgradientlight">

      <h1 class="instructor-schedule-page-instructor-name">
        <span class="instructor-schedule-page-text">${firstName} ${lastName}</span>
        <br />
      </h1>

      <!-- Image and Socials Container -->
      <div class="instructor-schedule-page-image-container">
        <img
                alt="image"
                src="public/external/${photoLink}"
                class="instructor-schedule-page-instructor-image"
        />
        <div class="instructor-schedule-page-socials-container">

          <!-- Phone Number Button -->
          <% if (request.getAttribute("social1") != null && !request.getAttribute("social1").equals("")) { %>
          <a href="tel:${social1}">
            <img
                    alt="image"
                    src="public/external/phoneicon.svg"
                    class="instructor-schedule-page-social1"
            />
          </a>
          <% } %>

          <!-- Email Button -->
          <% if (request.getAttribute("social2") != null && !request.getAttribute("social2").equals("")) { %>
          <a href="mailto:${social2}">
            <img
                    alt="image"
                    src="public/external/mailicon.svg"
                    class="instructor-schedule-page-social2"
            />
          </a>
          <% } %>

        </div>
      </div>

      <div class="instructor-schedule-page-container100">
        <button type="button" class="instructor-schedule-page-office-button1 button">
          <a href="/instructor?id=${id}">
              <span class="instructor-schedule-page-office-text1">
              <span>Office</span>
              <br />
              </span>
          </a>
        </button>
        <button type="button" class="instructor-schedule-page-schedule-button1 button">
              <span class="instructor-schedule-page-schedule-text1">
              <span>Schedule</span>
              <br />
                </span>
        </button>
      </div>

      <!-- Get Instructor Details -->
      <%
        ResultSet instructorSchedule = DatabaseConnection.GetInstructorSchedule(Integer.valueOf(request.getParameter("id")));
      %>

      <h1 class="instructor-schedule-page-office-title">
        <span class="instructor-schedule-page-text02">Instructor Schedule</span>
        <br />
      </h1>

      <h1 class="instructor-schedule-page-office-title1">
        <span>Last Update: ${lastScheduleUpdateDate}</span>
        <br />
      </h1>

      <div class="instructor-schedule-page-container2">
        <div class="instructor-schedule-page-container3">
          <div class="instructor-schedule-page-container4">

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
              <% int i=1; while (instructorSchedule.next()){%>
              <tr>
                <td><%=i%></td>
                <td><%=instructorSchedule.getString("day")%></td>
                <td><%=instructorSchedule.getString("time")%></td>
                <td><%=instructorSchedule.getString("title")%></td>
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
    <div class="instructor-schedule-page-bottombars">
      <div class="instructor-schedule-page-bottomnavcustom">
        <div class="instructor-schedule-page-navigationbar">
          <div class="instructor-schedule-page-home-button">
            <a href="/">
              <img
                      alt="image"
                      src="public/external/page%20icon%205.svg"
                      class="instructor-schedule-page-image"
              />
            </a>
          </div>
          <div class="instructor-schedule-page-instructor-button">
            <a href="/instructors?department=cnet">
              <img
                      alt="image"
                      src="public/external/page%20icon%204.svg"
                      class="instructor-schedule-page-image1"
              />
            </a>
          </div>
          <div class="instructor-schedule-page-contact-button">
            <a href="/contact">
              <img
                      alt="image"
                      src="public/external/page%20icon%203.svg"
                      class="instructor-schedule-page-image2"
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
