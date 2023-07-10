<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/index.css" />
    <title>Document</title>
  </head>

  <body>
  

    <header>
      <a href="index.jsp" class="site-logo" aria-label="homepage">Horizon</a>
      <nav class="main-nav">
        <ul class="nav__list">
          <li class="nav__list-item">
            <a href="http://localhost:8080/signup_page" class="nav__link"
              >Home</a
            >
          </li>
          <li class="nav__list-item">
            <a href="About.jsp" class="nav__link">About</a>
          </li>
          <li class="nav__list-item">
            <a href="Pricing.jsp" class="nav__link">Pricing</a>
          </li>
          <li class="nav__list-item">
            <a href="https://eyes.nasa.gov/apps/asteroids/#/asteroids" class="nav__link">Explore</a>
          </li>
          <li class="nav__list-item">
            <a href="logout.jsp" class="nav__link">Track session</a>
          </li>
        </ul>
      </nav>
      <nav class="account">
        <ul class="nav__list">
          <li class="nav__list-item">
            <a
              class="nav__link nav__link--btn"
              href="http://localhost:8080/signup_page/profile.jsp"
              >Profile</a
            >
          </li>
          <li class="nav__list-item">
            <a
              class="nav__link nav__link--btn nav__link--btn--highlight"
              href="our_plans.jsp"
              >Subscribe</a
            >
          </li>
        </ul>
      </nav>
    </header>

    <main>
      <div class="scene home-intro">
        <div class="card" id="card3" onclick="card1()">
          <div class="card__face card__face--front">
            <!-- <img src="https://i.loli.net/2019/11/23/cnKl1Ykd5rZCVwm.jpg" /> -->
            <img src="images/card_ast.jpg" />
          </div>
          <div class="card__face card__face--back">
            <!-- <img src="https://i.loli.net/2019/11/16/cqyJiYlRwnTeHmj.jpg" /> -->
            <img src="images/card_ast_back.webp" />
          </div>
        </div>
        <div class="card" id="card3" onclick="card2()">
          <div class="card__face card__face--front">
            <!-- <img src="https://i.loli.net/2019/11/16/FLnzi5Kq4tkRZSm.jpg" /> -->
            <img src="images/card_sat.jpeg" />
          </div>
          <div class="card__face card__face--back">
            <img src="images/card_sat_back.jpg" />
          </div>
        </div>
        <div class="card" id="card3" onclick="card3()">
          <div class="card__face card__face--front">
            <img src="images/card_wea.jpg" />
          </div>
          <div class="card__face card__face--back">
            <img src="images/card_wea_back.webp" />
          </div>
        </div>
        <div class="card" id="card4" onclick="card4()">
          <div class="card__face card__face--front">
            <img src="images/card_space.jpg" />
          </div>
          <div class="card__face card__face--back">
            <img src="images/card_space_back.webp" />
          </div>
        </div>
      </div>

      <section class="intro slide-in from-right" >
        <div>
          <img onclick="mars_rover()" class="intro-img" src="images/curiosity.jpg" alt="illustration-intro" />
        </div>
        <div class="intro-content">
          <h1>RIDE ON MARS ON ROVER CURIOSITY</h1>

          <p class="lg-p mt-2">
            Curiosity is a Mars rover that was launched by NASA in 2011. It
            landed in the Gale crater in 2012 and has been exploring the Red
            Planet ever since. The rover is equipped with a variety of
            scientific instruments, including a laser that can vaporize rocks
            and analyze their composition. It has made many groundbreaking
            discoveries, such as evidence of ancient water and the possibility
            of microbial life on Mars.
          </p>
        </div>
      </section>
      <section class="features home-more-stuff">
        <div class="features-item col fade-in slide-in from-left">
          <div class="features-item-head" onclick="box_info_1()">
            <img class="small_icon" src="images/Satellite.jpg" alt="" />
          </div>
          <div class="features-item-body mt-2">
            <h3>Satellite Information</h3>
            <p>
              A Satellite tracking module which provide information on the name
              and country of origin of a satellite. This allows users to learn
              more about the satellite's mission and purpose.
            </p>
          </div>
        </div>

        <div class="features-item col fade-in slide-in from-right">
          <div class="features-item-head" onclick="box_info_2()">
            <img class="small_icon" src="images/Weather.png" alt="" />
          </div>
          <div class="features-item-body mt-2">
            <h3>Weather Information</h3>
            <p>
              A Weather Information module such as OpenWeatherMap can provide
              information on current weather conditions in specific locations in
              the form of a table.
            </p>
          </div>
        </div>
        <div class="features-item col fade-in slide-in from-left">
          <div class="features-item-head" onclick="box_info_3()">
            <img class="small_icon" src="images/ff_icon.png" alt="" />
          </div>
          <div class="features-item-body mt-2">
            <h3>Forest fires</h3>
            <p>
              A NASA Fire Information Module for Resource Management System
              provides current in specific locations in the form of a table.
              This helps monitor and track the spread of forest fires.
            </p>
          </div>
        </div>
        <div class="features-item col fade-in slide-in from-right">
          <div class="features-item-head" onclick="box_info_4()">
            <img class="small_icon" src="images/Aestroids.png" alt="" />
          </div>
          <div class="features-item-body mt-2">
            <h3>Asteroid</h3>
            <p>
              A NASA's Near Earth Object Module provides information on known
              asteroids in the form of a table, including their size, orbit, and
              potential impact risks.
            </p>
          </div>
        </div>
      </section>

      <section class="productive">

        <div class="slider-frame">
            <div class="slide-images">
                    <div class="img-container" onclick="show_map()">
                        <img class="ima" src="images/volcano.jpg">
                    </div>
                    <div class="img-container" onclick="show_map()">
                        <img class="ima" src="images/icebergs.jpg">
                    </div>
                    <div class="img-container" onclick="show_map()">
                        <img class="ima" src="images/forest_fires.jpg">
                    </div>
            </div>
        </div>

        <div class="productive-content">
            <h2>Stay Curious</h2>
  
            <p class="lg-p">
              The module is designed to display three types of natural disasters on a map: forest fires, volcanoes, and icebergs.
            </p>
  
            <p class="lg-p">
             For forest fires, the module uses real-time data to track current fires and display their locations on the map. The display also includes information on the size of the fire and the level of danger it poses.
            </p>
            
            <p class="lg-p">
              For volcanoes, the module shows active and dormant volcanoes around the world. The display includes information on the name and location of each volcano, as well as its eruption history and level of activity.
            </p>
            
            <p>
                    For icebergs, the module tracks the movement of large ice masses in the ocean. The display shows the location and size of each iceberg, as well as its trajectory and potential impact on shipping lanes.
            </p>
          </div>
      </section>

      <section class="testimonial productive">
        <div class="testimonial-item slide-in from-top">
          <div class="testimonial-item-text">
            <p>
              Horizon keeps an eye on space & it provides accurate Informatioin about the space.
            </p>
          </div>
          <div class="testimonial-item-reviewer">
            <div class="testimonial-item-reviewer-img">
              <img
                src="images/mypic.png"
                alt=""
              />
            </div>
            <div class="ml-1 testimonial-item-reviewer-text">
              <h4>Syed Khasim</h4>
              
            </div>
          </div>
        </div>

      </section>

      <section class="cta slide-in from-bottom">
        <div class="cta-item">
          <div class="cta-text">
            <h2>Get Subscription</h2>
            <p>
             Don't miss out on our latest updates and exclusive content! By subscribing to our website, you'll have access to the latest news, insights, and expert opinions in your field of interest. You'll also be the first to know about our upcoming events and special offers. Stay informed and subscribe today
            </p>
          </div>
          <form class="cta-form mt-2" action="our_plans.jsp">
            
            <button type="submit" class="btn-block">Get Subscribtion</button>
          </form>
        </div>
      </section>
    </main>
    <footer>
      <section class="contact-info">
        <div class="contact-info-contacts">
          <div class="contact-info-contacts-item">
            <img
              class="img-footer"
              src="https://hannahshiels.github.io/front-end-mentor/fylo-dark-theme-landing-page-master/images/icon-phone.svg"
              alt=""
            />
            <p>+91 7989008233</p>
          </div>
          <div class="contact-info-contacts-item">
            <img
              class="img-footer"
              src="https://hannahshiels.github.io/front-end-mentor/fylo-dark-theme-landing-page-master/images/icon-email.svg"
              alt=""
            />
            <p>syed.khasim@pec.edu</p>
          </div>
        </div>
        <nav class="contact-info-links">
          <ul class="contact-info-links-list">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Jobs</a></li>
            <li><a href="#">Press</a></li>
            <li><a href="#">Blog</a></li>
          </ul>
          <ul class="contact-info-links-list">
            <li><a href="#">Contact Us</a></li>
            <li><a href="#">Terms</a></li>
            <li><a href="#">Privacy</a></li>
          </ul>
        </nav>
      </section>
    </footer>
  </body>

  <script>
  
  	function mars_rover()
  	{
  		location.href = "aestroid_stat.jsp";
  	}

    function show_map()
    {
        location.href = "maps/Map.jsp";
    }

    function card1() {
      location.href = "pod.jsp";
    }
    function card2() {
      location.href = "sat.jsp";
    }
    function card3() {
      location.href = "weat_stat.jsp";
    }

    function card4() {
      location.href = "news_stat.jsp";
    }

    function box_info_1() {
      location.href = "XML/s_stat.jsp";
    }
    function box_info_2() {
      location.href = "XML/w_stat.jsp";
    }
    function box_info_3() {
      location.href = "XML/f_stat.jsp";
    }
    function box_info_4() {
      location.href = "XML/a_stat.jsp";
    }

    // aniation
    const header = document.querySelector("header");
    const sectionOne = document.querySelector(".home-intro");

    const faders = document.querySelectorAll(".fade-in");
    const sliders = document.querySelectorAll(".slide-in");

    const sectionOneOptions = {
      rootMargin: "-200px 0px 0px 0px",
    };

    const sectionOneObserver = new IntersectionObserver(function (
      entries,
      sectionOneObserver
    ) {
      entries.forEach((entry) => {
        if (!entry.isIntersecting) {
          header.classList.add("nav-scrolled");
        } else {
          header.classList.remove("nav-scrolled");
        }
      });
    },
    sectionOneOptions);

    sectionOneObserver.observe(sectionOne);

    const appearOptions = {
      threshold: 0,
      rootMargin: "0px 0px -250px 0px",
    };

    const appearOnScroll = new IntersectionObserver(function (
      entries,
      appearOnScroll
    ) {
      entries.forEach((entry) => {
        if (!entry.isIntersecting) {
          return;
        } else {
          entry.target.classList.add("appear");
          appearOnScroll.unobserve(entry.target);
        }
      });
    },
    appearOptions);

    faders.forEach((fader) => {
      appearOnScroll.observe(fader);
    });

    sliders.forEach((slider) => {
      appearOnScroll.observe(slider);
    });
  </script>
</html>
