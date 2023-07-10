<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <!---<title> Responsive Registration Form | CodingLab </title>--->
    <link rel="stylesheet" href="css/registration.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <style>
      @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
        color: rgba(255, 255, 255, 0.729);
      }
      body {
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      @-webkit-keyframes flipiny {
        0% {
          opacity: 0;
          -webkit-transform: perspective(400px) rotateY(0deg);
          transform: perspective(400px) rotateY(90deg);
        }
        40% {
          -webkit-transform: perspective(400px) rotateY(0deg);
          transform: perspective(400px) rotateY(-10deg);
        }
        70% {
          -webkit-transform: perspective(400px) rotateY(0deg);
          transform: perspective(400px) rotateY(10deg);
        }
        100% {
          opacity: 1;
          -webkit-transform: perspective(400px) rotateY(0deg);
          transform: perspective(400px) rotateY(0deg);
        }
      }

      @keyframes flipiny {
        0% {
          opacity: 0;
          transform: perspective(400px) rotateY(90deg);
        }
        40% {
          transform: perspective(400px) rotateY(-10deg);
        }
        70% {
          transform: perspective(400px) rotateY(10deg);
        }
        100% {
          opacity: 1;
          transform: perspective(400px) rotateY(0deg);
        }
      }

      .container {
        -webkit-animation: flipiny 2s ease 1s 1 normal;
        -moz-animation: flipiny 2s ease 1s 1 normal;
        -ms-animation: flipiny 2s ease 1s 1 normal;
        animation: flipiny 2s ease 1s 1 normal;

        border-radius: 20px;
        max-width: 700px;
        width: 100%;
        background: transparent;
        opacity: 0.7;
        border: 2px solid rgba(255, 255, 255, 0.5);
        padding: 25px 30px;
        
        -webkit-box-shadow: 0px 0px 50px 30px #ff0000;
        -moz-box-shadow: 0px 0px 50px 30px #ff0000;
        box-shadow: 0px 0px 20px 2px #40dad2c4;

        z-index: 1;
        opacity: 0.8;
      }

      @keyframes transitionIn {
        from {
          opacity: 0;
          /* transform: rotate(-120deg); */
          transform: translateY(-30px);
        }

        to {
          opacity: 1;
          transform: rotate();
        }
      }

      .container .title {
        font-size: 25px;
        font-weight: 500;
        position: relative;
      }
      .container .title::before {
        content: "";
        position: absolute;
        left: 0;
        bottom: 0;
        height: 3px;
        width: 30px;
        border-radius: 5px;
      }
      .content form .user-details {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin: 20px 0 12px 0;
      }
      form .user-details .input-box {
        margin-bottom: 15px;
        width: calc(100% / 2 - 20px);
      }
      form .input-box span.details {
        display: block;
        font-weight: 500;
        margin-bottom: 5px;
      }

      input {
        color: black;
        font-weight: bold;
        display: block;
        width: 93%;
        margin: auto;
        padding: 13px;
        border-radius: 20px;
        font-family: "Roboto", sans-serif;
        opacity: 0.15;
      }

      .user-details .input-box input {
        height: 45px;
        width: 100%;
        outline: none;
        font-size: 16px;
        border-radius: 5px;
        padding-left: 15px;
        border: 1px solid #ccc;
        border-bottom-width: 2px;
        transition: all 0.3s ease;
      }
      .user-details .input-box input:focus,
      .user-details .input-box input:valid {
        border-color: #9b59b6;
      }
      form .gender-details .gender-title {
        font-size: 20px;
        font-weight: 500;
      }
      form .category {
        display: flex;
        width: 80%;
        margin: 14px 0;
        justify-content: space-between;
      }
      form .category label {
        display: flex;
        align-items: center;
        cursor: pointer;
      }
      form .category label .dot {
        height: 18px;
        width: 18px;
        border-radius: 50%;
        margin-right: 10px;
        background: #d9d9d9;
        border: 5px solid transparent;
        transition: all 0.3s ease;
      }
      #dot-1:checked ~ .category label .one,
      #dot-2:checked ~ .category label .two,
      #dot-3:checked ~ .category label .three {
        background: #9b59b6;
        border-color: #d9d9d9;
      }
      form input[type="radio"] {
        display: none;
      }
      form .button {
        height: 45px;
        margin: 35px 0;
      }
      form .button input {
        height: 100%;
        width: 100%;
        border-radius: 5px;
        border: none;
        color: #fff;
        font-size: 18px;
        font-weight: 500;
        letter-spacing: 1px;
        cursor: pointer;
        transition: all 0.3s ease;
        background: linear-gradient(135deg, #71b7e6, #9b59b6);
      }
      form .button input:hover {
        /* transform: scale(0.99); */
        background: linear-gradient(-135deg, #ffffff, #9b59b6);
        color: white;
        font-weight: bold;
      }
      @media (max-width: 584px) {
        .container {
          max-width: 100%;
        }
        form .user-details .input-box {
          margin-bottom: 15px;
          width: 100%;
        }
        form .category {
          width: 100%;
        }
        .content form .user-details {
          max-height: 300px;
          overflow-y: scroll;
        }
        .user-details::-webkit-scrollbar {
          width: 5px;
        }
      }
      @media (max-width: 459px) {
        .container .content .category {
          flex-direction: column;
        }
      }

      section {
        position: relative;
        width: 100%;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        overflow: hidden;
      }

      .video-container {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
      }

      .color-overlay {
        position: absolute;
        top: 0;
        left: 0;
        background-color: lightblue;
        width: 100%;
        height: 100vh;
        opacity: 0;
      }
    </style>
  </head>
  <body>
    <section>
      <div class="container">
        <div class="title">Registration</div>
        <div class="content">
          <form
            method="post"
            action="register"
            class="register-form"
            id="login-form"
          >
            <div class="user-details">
              
              <div class="input-box">
                <span class="details">Username</span>
                <input type="text" id="uname" name="uname" required />
              </div>
              <div class="input-box">
                <span class="details">Email</span>
                <input type="text" id="email" name="email" required />
              </div>
              <div class="input-box">
                <span class="details">Phone Number</span>
                <input type="text" id="phone" name="phone" required />
              </div>

              <div class="input-box">
                <span class="details">Address</span>
                <input type="text" id="address" name="address" required />
              </div>

              <div class="input-box">
                <span class="details">City</span>
                <input type="text" id="city" name="city" required />
              </div>
              
              <div class="input-box">
                <span class="details">Country</span>
                <input type="text" id="country" name="country" required />
              </div>

              <div class="input-box">
                <span class="details">Password</span>
                <input type="text" id="pass" name="pass" required />
              </div>
              <div class="input-box">
                <span class="details">Confirm Password</span>
                <input type="text" required />
              </div>
            </div>
            <div class="gender-details">
              <input type="radio" name="gender" id="dot-1" />
              <input type="radio" name="gender" id="dot-2" />
              <input type="radio" name="gender" id="dot-3" />
              <span class="gender-title">Gender</span>
              <div class="category">
                <label for="dot-1">
                  <span class="dot one"></span>
                  <span class="gender">Male</span>
                </label>
                <label for="dot-2">
                  <span class="dot two"></span>
                  <span class="gender">Female</span>
                </label>
                <label for="dot-3">
                  <span class="dot three"></span>
                  <span class="gender">Prefer not to say</span>
                </label>
              </div>
            </div>
            <div class="button">
              <input type="submit" value="Register" />
            </div>
          </form>
        </div>
      </div>

      <div class="video-container">
        <div class="color-overlay"></div>
        <video autoplay loop muted>
          <source src="images/space.mp4" type="video/mp4" />
        </video>
      </div>
    </section>
  </body>
</html>
