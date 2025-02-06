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
