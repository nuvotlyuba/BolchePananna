$(function () {
  //   //slick slider init
  //   // $(".js-topslider").slick({
  //   //   speed: 600,
  //   //   dots: true,
  //   //   arrows: false,
  //   // });

  //   $(".js-topslider").slick({
  //     dots: true,
  //     infinite: true,
  //     speed: 500,
  //     fade: true,
  //     cssEase: "linear",
  //   });

  //   //fancybox init
  //   $("[data-fancybox]").fancybox({
  //     buttons: ["zoom", "close"],
  //   });

  //   //menu toggle
  $(".js-menu-toggle").on("click", function () {
    $(this).toggleClass("is-active");
    $(".header-menu").toggleClass("is-open");
  });

  $(".js-footer-menu-toggle").on("click", function () {
    $(this).toggleClass("is-active");
    $(".footer-menu").toggleClass("is-open");
  });
});

let $status = $(".paging-info");
let $slickElement = $(".js-topslider");

$slickElement.on(
  "init reInit afterChange",
  function (event, slick, currentSlide, nextSlide) {
    let i = (currentSlide ? currentSlide : 0) + 1;
    $status.text(i + "/" + 3);
  }
);

$slickElement.slick({
  draggable: true,
  arrows: false,
  fade: true,
  speed: 2000,
  infinite: true,
  cssEase: "cubic-bezier(0.7, 0, 0.3, 1)",
  touchThreshold: 100,
  autoplay: true,
  autoplaySpeed: 3400,
});
