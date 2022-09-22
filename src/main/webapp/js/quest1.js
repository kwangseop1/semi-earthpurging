/* top버튼 */
$(document).ready(function(){

    $(".top_btn").click(function(){
    $("html, body").stop().animate({"scrollTop": 0}, 500);
    });
    
});

const poly = $(".poly");
const city = $(".city");
const white = $(".white");
const wt = $(".with");
const cityLi = $(".city_wrap>li");
let interval;

//퀘스트 수행 장소 글씨 마우스 호버시 효과 적용
cityLi.mouseenter(function(){
    const index = $(this).index();
    poly.eq(index).css("display","block");
    white.eq(index).css("color","white");
    wt.eq(index).css("display","block");
    interval = setInterval(function(){
        poly.eq(index).toggle();
    },400);
});
cityLi.mouseleave(function(){
    const index = $(this).index();
    poly.eq(index).css("display","none");
    white.eq(index).css("color","transparent");
    wt.eq(index).css("display","none");
    clearInterval(interval);
})


/*쓰담 위크 퀘스트에서 지역 선택했을 때, step1으로 넘어가는 기능*/ 
// city.on("click",function(){
//     let index = $(this).index();
//     if(index == 0){
//         location ="quest2.html"
//     }
// });