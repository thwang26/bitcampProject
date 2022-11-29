$(function(){
$.ajax({
type: 'get',
url: '/bitcafe/getBestMenuList',
dataType:'json',
success:function(data){
// alert(JSON.stringify(data));

$.each(data,function(index,items){
  $('<img/>',{ //append -> 메소드 체인 방식 
    src:items.menuImagePath,
    alt:'bestMeun'
  }).appendTo($('#bestMenu01'));
})//each
},
error:function(err){
  console.log(err);
}
});//ajax
});//function