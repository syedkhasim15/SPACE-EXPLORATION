const generalBtn = document.getElementById("genral");


const newsQuery = document.getElementById("newsQuery");
const newsType = document.getElementById("newsType");
const newsdetails = document.getElementById("newsdetails");

// Array
var newsDataArr = [];
// https://newsapi.org/v2/everything?apiKey=024c99c3f9ce4f2d8ff9fc52518bfbf2&q=stars
// apis 
const API_KEY = "bSqnSu0nO9GJ5aEvUgnVl2wEoMRiuzgm2GCALrEc";
const MARS = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=";


window.onload = function() {
    newsType.innerHTML="<h2>MARS ROVER IMAGES</h2>";
    // fetchHeadlines();
    updateMap();    
    
};



function updateMap() {

    newsdetails.innerHTML = "";

    console.log("Updating map with realtime data")
    fetch("data.json")
        .then(response => response.json())
        .then(rsp => {
          
            rsp.photos.forEach(element => {


                id = element.id;
                console.log(id);

                var col = document.createElement('div');
                col.className="col-sm-12 col-md-4 col-lg-3 p-2 card card_style flex-item bg-three tilt";
                
                var card = document.createElement('div');
                card.className = "p-2";
        
                var image = document.createElement('img');
                image.setAttribute("height","matchparent");
                image.setAttribute("width","100%");
                image.src=element.img_src;
        
                var cardBody = document.createElement('div');
                
                //NAME
                var newsHeading = document.createElement('h5');
                newsHeading.className = "card-title tran";
                newsHeading.innerHTML =element.rover.name;

                //cam full name
                var cam_fullname= document.createElement('h6');
                cam_fullname.className = "h_color";
                cam_fullname.innerHTML = element.camera.full_name;

                var dateHeading = document.createElement('h6');
                dateHeading.className = "text-primary";
                dateHeading.innerHTML =  "Date: "+element.earth_date;
        
                var discription = document.createElement('p');
                discription.className="text-muted";
                discription.innerHTML = id;

                var div_btn = document.createElement('div');
                div_btn.className = "btn";
        
                var link = document.createElement('a');
                link.className="bt";
                link.setAttribute("target", "_blank");
                link.href = element.img_src;
                link.innerHTML="VIEW"
        
                cardBody.appendChild(newsHeading);
                cardBody.appendChild(cam_fullname);
                cardBody.appendChild(dateHeading);
                cardBody.appendChild(discription);
                div_btn.appendChild(link);
        
                card.appendChild(image);
                card.appendChild(cardBody);
                col.appendChild(card);
                card.appendChild(div_btn)
                newsdetails.appendChild(col);          
                
            });
        })
}


