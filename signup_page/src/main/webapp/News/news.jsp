<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="news.css">
    <title>SPACE NEWS WEBSITE</title>
</head>

<body class="m-0 p-0">

<%

if((Integer)session.getAttribute("news")==0)
{
	response.sendRedirect("http://localhost:8080/signup_page/our_plans.jsp");
}	

%>

    <div class="container-fluid mt-0 p-0" style= "margin-top: 15px;">

        <!-- navbar -->
        <div style="margin-bottom: 50px;">
            <nav class="navbar navbar-expand-lg navbar-dark">
                <div class="container-fluid">
                    <a class="navbar-brand text-warning h1" href="#">SPACE_NEWS</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link h5" aria-current="page" href="#genral" id="genral">Satellites</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link h5" aria-current="page" href="#business" id="business" >Aestroids</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link h5" href="#sports" id="sport">Moon</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link h5" aria-current="page" href="#tehnology" id="technology">Planets</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link h5" href="#entertainment" id="entertainment">Rockets</a>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2" type="text" id="newsQuery" placeholder="Search news">
                            <button class="btn btn-outline-warning" type="button" id="searchBtn">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>

        
        <!-- News  -->
        <div class="con">
            <div class="row m-3" id="newsType"></div>
            <div class="row me-2 ms-2" id="newsdetails"></div>
        </div>

        <!-- footer -->
        <div class="mt-5">
            <div>
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark mt-4">
                  <div class="container-fluid m-0 p-0">
                    <h5 class="text-white me-auto ms-auto">Code<span class="text-warning">Logic</span></h5>
                  </div>
                </nav>
              </div>
        </div>

    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
        
     <script>
     
     const generalBtn = document.getElementById("genral");
     const businessBtn = document.getElementById("business");
     const sportsBtn = document.getElementById("sport");
     const entertainmentBtn = document.getElementById("entertainment");
     const technologyBtn = document.getElementById("technology");
     const searchBtn = document.getElementById("searchBtn");

     const newsQuery = document.getElementById("newsQuery");
     const newsType = document.getElementById("newsType");
     const newsdetails = document.getElementById("newsdetails");

     // Array
     var newsDataArr = [];
     // https://newsapi.org/v2/everything?apiKey=024c99c3f9ce4f2d8ff9fc52518bfbf2&q=stars
     // apis 
     const API_KEY = "97b8e044bb1946e2bf1404872afc93a4";
     const NASA = "https://newsapi.org/v2/everything?q=nasa&apiKey=";
     const SATELLITE = "https://newsapi.org/v2/everything?q=satellite&apiKey=";
     const ASTEROIDS = "https://newsapi.org/v2/everything?q=asteroids&apiKey=";
     const MOON = "https://newsapi.org/v2/everything?q=moon&apiKey=";
     const ENTERTAINMENT_NEWS = "https://newsapi.org/v2/everything?q=rockets&apiKey=";
     const PLANETS = "https://newsapi.org/v2/everything?q=planets&apiKey=";
     const SEARCH_NEWS = "https://newsapi.org/v2/everything?q=";

     window.onload = function() {
         newsType.innerHTML="<h4>Headlines</h4>";
         fetchHeadlines();
     };


     generalBtn.addEventListener("click",function(){
         newsType.innerHTML="<h4>Satellite</h4>";
         fetchGeneralNews();
     });

     businessBtn.addEventListener("click",function(){
         newsType.innerHTML="<h4>Aestroids</h4>";
         fetchBusinessNews();
     });

     sportsBtn.addEventListener("click",function(){
         newsType.innerHTML="<h4>Moon</h4>";
         fetchSportsNews();
     });

     entertainmentBtn.addEventListener("click",function(){
         newsType.innerHTML="<h4>Planets</h4>";
         fetchEntertainmentNews();
     });

     technologyBtn.addEventListener("click",function(){
         newsType.innerHTML="<h4>Rockets</h4>";
         fetchTechnologyNews();
     });

     searchBtn.addEventListener("click",function(){
         newsType.innerHTML="<h4>Search : "+newsQuery.value+"</h4>";
         fetchQueryNews();
     });



     const fetchHeadlines = async () => {
         
         const response = await fetch(NASA+API_KEY);
         newsDataArr = [];
         if(response.status >=200 && response.status < 300) {
             const myJson = await response.json();
             newsDataArr = myJson.articles;
         } else {
             // handle errors
             console.log(response.status, response.statusText);
             newsdetails.innerHTML = "<h5>No data found.</h5>"
             return;
         }

         displayNews();
     }


     const fetchGeneralNews = async () => {
         const response = await fetch(SATELLITE+API_KEY);
         newsDataArr = [];
         if(response.status >=200 && response.status < 300) {
             const myJson = await response.json();
             newsDataArr = myJson.articles;
         } else {
             // handle errors
             console.log(response.status, response.statusText);
             newsdetails.innerHTML = "<h5>No data found.</h5>"
             return;
         }

         displayNews();
     }

     const fetchBusinessNews = async () => {
         const response = await fetch(ASTEROIDS+API_KEY);
         newsDataArr = [];
         if(response.status >=200 && response.status < 300) {
             const myJson = await response.json();
             newsDataArr = myJson.articles;
         } else {
             // handle errors
             console.log(response.status, response.statusText);
             newsdetails.innerHTML = "<h5>No data found.</h5>"
             return;
         }

         displayNews();
     }

     const fetchEntertainmentNews = async () => {
         const response = await fetch(ENTERTAINMENT_NEWS+API_KEY);
         newsDataArr = [];
         if(response.status >=200 && response.status < 300) {
             const myJson = await response.json();
             console.log(myJson);
             newsDataArr = myJson.articles;
         } else {
             // handle errors
             console.log(response.status, response.statusText);
             newsdetails.innerHTML = "<h5>No data found.</h5>"
             return;
         }

         displayNews();
     }

     const fetchSportsNews = async () => {
         const response = await fetch(MOON+API_KEY);
         newsDataArr = [];
         if(response.status >=200 && response.status < 300) {
             const myJson = await response.json();
             newsDataArr = myJson.articles;
         } else {
             // handle errors
             console.log(response.status, response.statusText);
             newsdetails.innerHTML = "<h5>No data found.</h5>"
             return;
         }

         displayNews();
     }

     const fetchTechnologyNews = async () => {
         const response = await fetch(PLANETS+API_KEY);
         newsDataArr = [];
         if(response.status >=200 && response.status < 300) {
             const myJson = await response.json();
             newsDataArr = myJson.articles;
         } else {
             // handle errors
             console.log(response.status, response.statusText);
             newsdetails.innerHTML = "<h5>No data found.</h5>"
             return;
         }

         displayNews();
     }

     const fetchQueryNews = async () => {

         if(newsQuery.value == null)
             return;

         const response = await fetch(SEARCH_NEWS+encodeURIComponent(newsQuery.value)+"&apiKey="+API_KEY);
         newsDataArr = [];
         if(response.status >= 200 && response.status < 300) {
             const myJson = await response.json();
             newsDataArr = myJson.articles;
         } else {
             //error handle
             console.log(response.status, response.statusText);
             newsdetails.innerHTML = "<h5>No data found.</h5>"
             return;
         }

         displayNews();
     }
     

  


     function displayNews() {

         newsdetails.innerHTML = "";

         // if(newsDataArr.length == 0) {
         //     newsdetails.innerHTML = "<h5>No data found.</h5>"
         //     return;
         // }

         newsDataArr.forEach(news => {

             var date = news.publishedAt.split("T");
             
             var col = document.createElement('div');
             col.className="col-sm-12 col-md-4 col-lg-3 p-2 card card_style";
             
             var card = document.createElement('div');
             card.className = "p-2";

             var image = document.createElement('img');
             image.setAttribute("height","matchparent");
             image.setAttribute("width","100%");
             image.src=news.urlToImage;

             var cardBody = document.createElement('div');
             
             var newsHeading = document.createElement('h5');
             newsHeading.className = "card-title";
             newsHeading.innerHTML = news.title;

             var dateHeading = document.createElement('h6');
             dateHeading.className = "text-primary";
             dateHeading.innerHTML = date[0];

             var discription = document.createElement('p');
             discription.className="text-muted";
             discription.innerHTML = news.description;

             var link = document.createElement('a');
             link.className="btn btn-dark";
             link.setAttribute("target", "_blank");
             link.href = news.url;
             link.innerHTML="Read more";

             cardBody.appendChild(newsHeading);
             cardBody.appendChild(dateHeading);
             cardBody.appendChild(discription);
             cardBody.appendChild(link);

             card.appendChild(image);
             card.appendChild(cardBody);

             col.appendChild(card);

             newsdetails.appendChild(col);
         });

     }
     
     
     
     </script> 
</body>

</html>