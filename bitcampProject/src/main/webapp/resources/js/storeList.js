$(function(){
    $.ajax({
        type: 'get',
        url: '/bitcafe/store/getStoreList',
        dataType: 'json',
        success: function(data){
             alert(JSON.stringify(data));

            // $.each(data, function(index, items){
            //     $('<tr/>').append($('<td/>', {
            //         align:'center',
            //         text: items.name
            //     })).append($('<td/>', {
            //         align:'center',
            //         text: items.id
            //     })).append($('<td/>', {
            //         align:'center',
            //         text: items.pwd
            //     })).appendTo($('#userListTable')); 
            // });

            $.each(data, function(index, items){
                $('<div/>',{class:"row", id:"store_List"})
                    .append($('<div/>',{class:"col-4", id:"store_img_each"}).append($('<img/>',{
                        src: items.storeImagePath,
                        alt: "store1",
                        class: "rounded float-start",
                        id: "store_thumb"
                    })))
                    .append($('<div/>',{class:"col", id:"store_info"})
                    .append($('<div/>',{id:"store_name"}).text(items.storeName))
                    .append($('<div/>',{id:"store_addr"}).text(items.storeAddr))
                    .append($('<div/>',{id:"store_tel"}).text(items.storeTel)
                    .append($('<img/>', {
                        src: "./resources/img/phone1.jpg",
                        alt: "phone1",
                        id: "phone_img"
                    }).css({'width': '20px', 'height': '20px'}))
                    )
                    )
                    .append($('<hr/>').css('margin-top', '16px'))
                    .appendTo($('#storeList_all'))

                    // $('#store_name').text(items.storeName);
                    // $('#store_addr').text(items.storeAddr);
                    // $('#store_tel').text(items.storeTel);
            });

            // $.each(data, function(index, items){
            //     ('<div class="row" id="store_List"></div>').append('<div class="col-4"></div>').append('<img src="/bitcafe/src/main/webapp/resources/img/storeImage/testShop1.jpeg" class="rounded float-start" alt="store1" id="store_thumb">').appendTo($('#store_List_hr1'))
            // });

        },
        error: function(err){
            console.log(err);
        }
    });
});