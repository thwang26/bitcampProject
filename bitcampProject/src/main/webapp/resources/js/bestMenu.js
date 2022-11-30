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
    alt:'bestMenu',
    class:'bestMenuImg'
  }).append($('<input/>', {type:"hidden", id:"seqMenu"}).val(items.seqMenu))
  .appendTo($('#bestMenu01'));
})//each
},
error:function(err){
  console.log(err);
}
});//ajax
});//function

//$(this).next().val()//차일드or 칠드런(next자리)children()
// $('<img/>').on('click',function(){
// alert('z');
// });
$('#bestMenu01').on('click','.bestMenuImg',function(){
  // alert($(this).prop('tagName')); //이미지 태그가 this
// $(this).children('#seqMenu').val()
// alert($(this).children('#seqMenu').val())
  location.href='/bitcafe/menuDetailsForm?seqMenu='+$(this).children('#seqMenu').val();
});

