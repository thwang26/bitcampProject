$('.menu').click(function () {
    $.ajax({
        type: 'get',
        url: '/bitcafe/menuLoad',
        data: 'categoryNum=' + $(this).val(),
        dataType: 'json',
        success: function (data) {
        	alert(data.content);
            $.each(data, function (index, items) {
                $('<div/>', { class: "row nnn", id: "store_List"})
                    .append($('<div/>', { class: "col-4", id: "store_img_each" }).append($('<img/>', {
                        src: items.storeImagePath,
                        alt: "store1",
                        class: "rounded float-start",
                        id: "store_thumb"
                    })))
                    .append($('<div/>', { class: "col-6", id: "store_info" })
                        .append($('<input/>', {type:"hidden", id:"storeSeq"}).val(items.storeNum))
                        .append($('<div/>', { id: "store_name" }).text(items.storeName))
                        .append($('<div/>', { id: "store_addr" }).text(items.storeAddr))
                        .append($('<div/>', { class: "row", id: "row_tel" })
                            .append($('<div/>', { class: "col-1", id: "col_phoneIcon" })
                                .append($('<img/>', {
                                    src: "./resources/img/phone1.jpg",
                                    alt: "phone1",
                                    id: "phone_img"
                                })
                                    .css({ 'width': '17px', 'height': '17px' })))
                            .append($('<div/>', { class: "col", id: "col_telNum" })
                                .append($('<div/>', { id: "store_tel" }).text(items.storeTel)
                                ))))
                    .append($('<hr/>').css('margin-top', '16px'))
                    .appendTo($('#menuList'))

            });

        },
        error: function (err) {
            console.log(err);
        }
    });

});
$(document).on('click', '.nnn', function(){
	var storeNum = $(this).find('input').val();
	
	alert(storeNum);

});
/*
function category_list(){
	var storeNum = document.getElementById("storeSeq").value;
    alert(storeNum);
    //location.href="/bitcafe/category/?"
};
*/
function goback_store_info(){
	alert("뒤로가기 123123");	
	location.href="/bitcafe/?num=1";

};