(() => {

    // Slider
    
    
    let slideIndex = 0;
    showSlides();
    
    function showSlides() {
        let slides = document.getElementsByClassName("slides"),
            dots = document.getElementsByClassName("dot");
            
        let i;
        for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";  
        }
        slideIndex++;
        if (slideIndex > slides.length) {slideIndex = 1}    
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";  
        dots[slideIndex-1].className += " active";
        setTimeout(showSlides, 3500); 
    }
    
    //Data
    let title = document.querySelector(".title"),
            description = document.querySelector(".description"),
            buttonsDesk = document.querySelectorAll(".desktop"),
            buttonsMob = document.querySelectorAll(".mobile");
       console.log("fired");
    
       let remoteData = {};
    
    
       function getData()  {                                 
             
           fetch(`./data.json`) 
           .then(res => res.json()) 
           .then(data => {
               remoteData = data;
               console.table(remoteData);
           })
           .catch(error => console.log(error));
       }
    
          getData();
       function buildInterface() {
           
            
            let key = this.dataset.key;
            console.log(this.dataset.key);
            
            title.textContent = remoteData[key].title;
            description.textContent = remoteData[key].description;
       }   
      
    
       buttonsDesk.forEach(buttonD => buttonD.addEventListener("click", buildInterface));
       buttonsMob.forEach(buttonM => buttonM.addEventListener("click", buildInterface));
    
    })();