var slideIndex = 1;
var panels = document.getElementsByClassName("panel");
var dots   = document.getElementsByClassName("dot");
showSlides(slideIndex);

function navigate(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  if (n > panels.length) {slideIndex = 1}
  if (n < 1)             {slideIndex = panels.length}

  for (var i=0; i < panels.length; i++) {
    panels[i].style.display = "none";
  }
  for (var i=0; i < dots.length; i++) {
    dots[i].classList.remove("active");
  }
  panels[slideIndex-1].style.display = "flex";
  dots[slideIndex  -1].classList.add("active");
}

