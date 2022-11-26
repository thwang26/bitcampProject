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
                $('<div/>', { class: "row nnn", id: "menuList"})
                    .append($('<div/>', { class: "col-4", id: "menuImg" })
                    .append($('<img/>', {
                        src: items.menuImagePath,
                        alt: "menu",
                        class: "rounded float-start",
                        id: "menu_thumb"
                    })))
                    .append($('<input/>', { type: "hidden" , class: "seqMenu" , value: items.seqMenu}))
                    .append($('<div/>', { class: "col-6", id: "menuInfo" })
	                    .append($('<div/>', { id:"menuName"}).text(items.menuName))
	                    .append($('<div/>', { id: "menuContent" }).text(items.menuContent))
	                    .append($('<div/>', { id: "menuPrice" }).text(items.menuPrice))
	                    .append($('<input/>', { type: "button", value: "편집", class: "btn btn-success menuEditBtn", id: "menuEditBtn"}).css('width', '100px'))
	                    .append($('<input/>', { type: "button", value: "✕", class: "btn btn-danger", id: "menuDeleteBtn"}).css('width', '100px')))
                    .append($('<hr/>').css('margin-top', '16px'))
                    .appendTo($('#menuList'))
            });
        },
        error: function (err) {
            console.log(err);
            
        }
    });

});//카테고리별 메뉴

$(document).on('click', '.menuEditBtn', function(){
	console.log($(this).parent().prev().val());
	window.scrollTo(0,0);
	$.ajax({
        type: 'get',
        url: '/bitcafe/menuUpdateForm',
        data: 'seqMenu=' + $(this).parent().prev().val(),
        dataType: 'json',
        success: function (data) {
        	//alert(JSON.stringify(data));
        	$('#menuList div').remove();
        	$('<div/>', { class: "row nnn", id: "menuList"})
	            .append($('<div/>', { class: "col-4", id: "menuImg" })
	            .append($('<img/>', {
	                src: data.menuImagePath,
	                alt: "menu",
	                class: "rounded float-start",
	                id: "menu_thumb"
	            })))
	            .append($('<input/>', { type: "hidden" , class: "seqMenu" , value: data.seqMenu}))
	            .append($('<div/>', { class: "col-6", id: "menuInfo" })
	                .append($('<input/>', { type: "text", id:"menuName", value: data.menuName}))
	                .append($('<textarea/>', { id: "menuContent", value: data.menuContent }))
	                .append($('<input/>', { type: "text", id: "menuPrice", value: data.menuPrice }))
	                .append($('<input/>', { type: "button", value: "수정", class: "btn btn-success", id: "menuUpdateBtn"}).css('width', '100px'))
	                .append($('<input/>', { type: "button", value: "취소", class: "btn btn-danger", id: "menuBackBtn"}).css('width', '100px')))
	            .append($('<hr/>').css('margin-top', '16px'))
	            .appendTo($('#menuList'))
        },
        error: function (err) {
            console.log(err);
        }
    });
});//메뉴편집 form

$(document).on('click', '#menuUpdateBtn', function(){
	confirm('정말로 수정하시겠습니까?');
});//메뉴수정

$(document).on('click', '#menuBackBtn', function(){
	confirm('정말로 수정하시겠습니까?');
});//메뉴수정 취소

$(document).on('click', '#menuDeleteBtn', function(){
	if(confirm('메뉴를 삭제하시겠습니까?')){
		$.ajax({
	        type: 'get',
	        url: '/bitcafe/menuErase',
	        data: 'seqMenu=' + $(this).parents().find('.seqMenu').val(),
	        success: function () {
				alert('메뉴를 삭제하였습니다');
	        },
	        error: function (err) {
	            console.log(err);
	        }
    	});
	}
});//메뉴삭제