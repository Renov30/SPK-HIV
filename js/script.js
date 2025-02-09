// lama
// // toggle kelas aktif
// const navbarNav = document.querySelector(".navbar-nav");
// // ketika hamburger menu di klik
// document.querySelector("#hamburger-menu").onclick = () => {
//   navbarNav.classList.toggle("active");
// };

// // klik diluar sidebar untuk menghilangkan nav
// const hamburger = document.querySelector("#hamburger-menu");

// document.addEventListener("click", function (e) {
//   if (!hamburger.contains(e.target) && !navbarNav.contains(e.target)) {
//     navbarNav.classList.remove("active");
//   }
// });

// baru
// Toggle kelas aktif untuk navbar
const navbarNav = document.querySelector(".navbar-nav");
const hamburger = document.querySelector("#hamburger-menu");

hamburger.addEventListener("click", function (e) {
  e.preventDefault(); // Mencegah kembali ke atas
  navbarNav.classList.toggle("active");
});

// Klik di luar navbar untuk menutupnya
document.addEventListener("click", function (e) {
  if (!hamburger.contains(e.target) && !navbarNav.contains(e.target)) {
    navbarNav.classList.remove("active");
  }
});

const toggleViewBtn = document.getElementById("toggleViewBtn");
const cardView = document.getElementById("cardView");
const tableView = document.getElementById("tableView");

toggleViewBtn.addEventListener("click", () => {
  cardView.classList.toggle("hidden");
  tableView.classList.toggle("hidden");
  if (cardView.classList.contains("hidden")) {
    toggleViewBtn.innerHTML = '<i data-feather="image"></i>&nbsp;Toggle View';
  } else {
    toggleViewBtn.innerHTML = '<i data-feather="table"></i>&nbsp;Toggle View';
  }
  feather.replace();
});

// Open the Modal
function openModal() {
  document.getElementById("myModal").style.display = "block";
  document.getElementById("nav").style.display = "none";
}

// Close the Modal
function closeModal() {
  document.getElementById("myModal").style.display = "none";
  document.getElementById("nav").style.display = "flex";
}

var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides((slideIndex += n));
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides((slideIndex = n));
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {
    slideIndex = 1;
  }
  if (n < 1) {
    slideIndex = slides.length;
  }
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex - 1].style.display = "block";
  dots[slideIndex - 1].className += " active";
  captionText.innerHTML = dots[slideIndex - 1].alt;
}
