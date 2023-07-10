function updateMap() {
    console.log("Updating map with realtime data")
    fetch("volcanos.json")
        .then(response => response.json())
        .then(rsp => {
          
            rsp.events.forEach(element => {


                title = element.title;

                // categories_id = element.categories[0].id;
                // categories_title = element.categories[0].title;

                categories_id = element.categories[0].id;
                categories_title = element.categories[0].title;
                console.log(categories_id);
                geometry_date  = element.geometries[0].date;

                

                for(var i=0; i<element.geometries.length; i++)
                {
                    geometry_coordinates = element.geometries[i].coordinates;
                    longitude = geometry_coordinates[0];
                    latitude = geometry_coordinates[1];
                    console.log(longitude);
                    console.log(latitude);
                    
                    color = "rgb(140, 203, 230);";
    
                    // Mark on the map
                    new mapboxgl.Marker({
                        draggable: false,
                        color: color
                    }).setLngLat([longitude, latitude])
                    .addTo(map); 
                }
           
                
            });
        })
}

let interval = 20000;
setInterval( updateMap, interval); 