$(function () {
    alert("알림");
    /*$.ajax({
        type: 'get',
        url: '/bitcafe/orderSales',
        dataType: 'json',
        success: function (data) {
        	alert(JSON.stringify(data));
            $.each(data, function (index, items) {
                $('<li/>', { class: "row nnn", id: "income"})
                .append($('<input/>', { type: 'text', value: items.seqOrder}))
                .append($('<div/>', { id: 'menuName'}).text(items.menuName + " ")
                .append($('<hr/>').css('margin-top', '16px')))
                .appendTo($('#content'))
            });
        },
        error: function (err) {
            console.log(err);
            
        }
    });*/

});//orderSales