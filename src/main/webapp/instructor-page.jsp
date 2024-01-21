<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="english">
<head>
  <title>${firstName} ${lastName}</title>
  <meta property="og:title" content="Instructor-Page - exported project" />
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
  <link href="./instructor-page.css" rel="stylesheet" />

  <div class="instructor-page-container">

    <div class="instructor-page-backgroundgradientlight">

      <h1 class="instructor-page-instructor-name">
        <span class="instructor-page-text">${firstName} ${lastName}</span>
        <br />
      </h1>

      <!-- Image and Socials Container -->
      <div class="instructor-page-image-container">
        <img
                alt="image"
                src="public/external/${photoLink}.png"
                class="instructor-page-instructor-image"
        />
        <div class="instructor-page-socials-container">
          <a href="tel:${social1}">
            <img
                    alt="image"
                    src="public/external/phoneicon.svg"
                    class="instructor-page-social1"
            />
          </a>
          <a href="mailto:${social2}">
            <img
                    alt="image"
                    src="public/external/mailicon.svg"
                    class="instructor-page-social2"
            />
          </a>
        </div>
      </div>


      <h1 class="instructor-page-office-title">
        <span class="instructor-page-text02">Office</span>
        <br />
      </h1>

      <!-- Informations Container -->
      <div class="instructor-page-informations-container">

        <!-- Details Title -->
        <div class="instructor-page-details-container1">
          <div class="instructor-page-container1">
                <span class="instructor-page-text04">
                  <span>Floor:</span>
                  <br />
                </span>
          </div>
          <div class="instructor-page-container2">
                <span class="instructor-page-text07">
                  <span>Department:</span>
                  <br />
                </span>
          </div>
          <div class="instructor-page-container3">
                <span class="instructor-page-text10">
                  <span>Office #</span>
                  <br />
                </span>
          </div>
        </div>

        <!-- Informations -->
        <div class="instructor-page-details-container2">
          <div class="instructor-page-floor-details">
                <span class="instructor-page-text13">
                  <span>${floor}</span>
                  <br />
                </span>
          </div>
          <div class="instructor-page-department-details">
                <span class="instructor-page-text16">
                  <span>${department}</span>
                  <br />
                </span>
          </div>
          <div class="instructor-page-office-details">
                <span class="instructor-page-text19">
                  <span>${office}</span>
                  <br />
                </span>
          </div>
        </div>

      </div>

      <h1 class="instructor-page-location-view-title">
        <span class="instructor-page-text22">Department View</span>
        <br />
      </h1>

      <!-- Department View Image -->
      <div class="instructor-page-location-view-container">
        <img
                alt="image"
                src="public/external/${departmentView}.svg"
                class="instructor-page-location-view-image"
        />
      </div>

    </div>
    <div class="instructor-page-bottombars">
      <div class="instructor-page-bottomnavcustom">
        <div class="instructor-page-navigationbar">
          <div class="instructor-page-home-button">
            <a href="/">
              <img
                      alt="image"
                      src="public/external/page%20icon%205.svg"
                      class="instructor-page-image"
              />
            </a>
          </div>
          <div class="instructor-page-instructor-button">
            <a href="/instructors?department=cnet">
              <img
                      alt="image"
                      src="public/external/page%20icon%204.svg"
                      class="instructor-page-image1"
              />
            </a>
          </div>
          <div class="instructor-page-contact-button">
            <a href="/contact">
              <img
                      alt="image"
                      src="public/external/page%20icon%203.svg"
                      class="instructor-page-image2"
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
