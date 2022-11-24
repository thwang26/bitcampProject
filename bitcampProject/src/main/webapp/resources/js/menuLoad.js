$('#category li').click(function () {
	$('#menuList div').remove();
    $.ajax({
        type: 'get',
        url: '/bitcafe/menuLoad',
        data: 'categoryNum=' + $(this).val(),
        dataType: 'json',
        success: function (data) {
        	//alert(JSON.stringify(data));
            $.each(data, function (index, items) {
                $('<div/>', { class: "row nnn", id: "store_List"})
                    .append($('<div/>', { class: "col-4", id: "store_img_each" }).append($('<img/>', {
                        src: items.menuImagePath,
                        alt: "menu",
                        class: "rounded float-start",
                        id: "menu_thumb"
                    })))
                    .append($('<div/>', { class: "col-6", id: "store_info" })
                    .append($('<input/>', { type: "button", value: "수정", class: "btn btn-success", id: "menuUpdateBtn"}).css('width', '100px'))
                    .append($('<input/>', { type: "button", value: "✕", class: "btn btn-danger", id: "menuDeleteBtn"}).css('width', '100px'))
                    .append($('<div/>', { id:"menuName"}).text(items.menuName))
                    .append($('<div/>', { id: "menuContent" }).text(items.menuContent))
                    .append($('<div/>', { id: "menuPrice" }).text(items.menuPrice)))
                    .append($('<hr/>').css('margin-top', '16px'))
                    .appendTo($('#menuList'))
            });
        },
        error: function (err) {
            console.log(err);
        }
    });

});
/*
function category_list(){
	var storeNum = document.getElementById("storeSeq").value;
    alert(storeNum);
    //location.href="/bitcafe/category/?"
};*/