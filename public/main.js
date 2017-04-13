// gallery
var slides = document.querySelectorAll('.carousel .city');
var currentSlide = 0;
var slideInterval = setInterval(nextSlide,5000);

function nextSlide(){
    slides[currentSlide].className = 'city';
    currentSlide = (currentSlide+1)%city.length;
    slides[currentSlide].className = 'city-showing';
}
