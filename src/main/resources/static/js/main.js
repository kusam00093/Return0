new Swiper('.swiper', {
  autoplay: {
    delay: 5000
  },
  loop: true,
  slidesPerView: 3,
  spaceBetween: 10,
  centeredSlides: true,
  pagination: {
    el: '.swiper-pagination',
    clickable: true
  },
  navigation: {
    prevEl: '.swiper-button-prev',
    nextEl: '.swiper-button-next'
  }
  
})
var swiper = new Swiper('.swiper-container', {
  direction: 'vertical', // 수직 슬라이드 설정
  autoplay: {
    delay: 3000, // 3초마다 자동 슬라이드
  },
});

var swiper = new Swiper(".main-swiper", {
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});