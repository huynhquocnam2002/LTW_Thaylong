$(function () {
    // chuyển tab lớn-------------------------------------
    let tabs = ["#tab1", "#tabs", "#tab3", "#tab4", "#changePassTab"]
    $(function () {
        $("#tabs").tabs();
        $("#datepicker").datepicker()
        $("#tab1").show()
        $("#tabs").hide()
        $("#tab3").hide()
        $("#tab4").hide()
        $("#changePassTab").hide()
        $(".changeTop").click(function () {
            changeTab("#tab1", tabs)
        })
        $(".itemContent.1").click(function () {
            changeTab("#tab1", tabs)
        })
        $(".itemContent.2").click(function () {
            changeTab("#tabs", tabs)
        })
        $(".itemContent.3").click(function () {
            changeTab("#tab3", tabs)
        })
        $(".itemContent.4").click(function () {
            changeTab("#tab4", tabs)
        })
        $("#changePassBT").click(function () {
            changeTab("#changePassTab", tabs)
        })
        $("#back").click(function () {
            changeTab("#tab1", tabs)
        })
    });
    function changeTab(activeTab, arr) {
        for (const i of arr) {
            $(i).hide()
            if (i == activeTab) $(i).show()
        }
    }

    //chọn ảnh------------------------------------------------
    function openDialog() {
        document.querySelector('#file').click();
        document.querySelector('#file').onchange = changeavatar
    }
    document.querySelector('.fileBT').onclick = openDialog
    document.querySelector('#submit').onclick = changeAvatar

    //đổi ảnh--------------------------------------------------
    function changeavatar() {
        let fileInput = document.querySelector('#file')
        let file = fileInput.files[0]
        let img = document.querySelectorAll('.avatar')[1]
        img.src = URL.createObjectURL(file)

    }
    function changeAvatar() {
        let file = document.querySelector('#file').files[0]
        let avatar = document.querySelector('.avatar')
        if (typeof file != "undefined") {
            avatar.src = URL.createObjectURL(file)
        }
    }

    //đọc 1 thông báo
    let listThongBao = $('.thong_bao_div')
    function read() {
        this.className = 'thong_bao_div'
    }
    for (let i in listThongBao) {
        listThongBao[i].onclick = read
    }

    //đánh dấu tất cả là đã đọc-----------------------------------------------
    function readAll() {
        let list = document.querySelectorAll('.thong_bao_div')
        for (const i in list) {
            list[i].className = 'thong_bao_div'
        }
    }
    $('.readed').click(function () {
        readAll()
    })

    //xóa tất cả thông báo-----------------------------------------
    function deleteAll() {
        $('div').remove('.thong_bao_div')
    }
    $('.delete').click(function () {
        deleteAll()
    })

    //đổi tab voucher---------------------------------------------------
    let voucherTab = ["#tab4 .container.1", "#tab4 .container.2", "#tab4 .container.3", "#tab4 .container.4", "#tab4 .container.5"]
    let voucherTabContent = ["#voucherTab1", "#voucherTab2", "#voucherTab3", "#voucherTab4", "#voucherTab5"]
    $("#tab4 .container.1").show()
    $("#tab4 .container.2").hide()
    $("#tab4 .container.3").hide()
    $("#tab4 .container.4").hide()
    $("#tab4 .container.5").hide()
    $('#voucherTab1').click(function () {
        changeTab("#tab4 .container.1", voucherTab)
        activeTab("#voucherTab1", voucherTabContent)
    })
    $('#voucherTab2').click(function () {
        changeTab("#tab4 .container.2", voucherTab)
        activeTab("#voucherTab2", voucherTabContent)
    })
    $('#voucherTab3').click(function () {
        changeTab("#tab4 .container.3", voucherTab)
        activeTab("#voucherTab3", voucherTabContent)
    })
    $('#voucherTab4').click(function () {
        changeTab("#tab4 .container.4", voucherTab)
        activeTab("#voucherTab4", voucherTabContent)
    })
    $('#voucherTab5').click(function () {
        changeTab("#tab4 .container.5", voucherTab)
        activeTab("#voucherTab5", voucherTabContent)
    })
    function activeTab(activeTab, arr) {
        for (const i of arr) {
            let e = document.querySelector(i)
            e.className = e.className.replace('active', '').trim()
            if (i == activeTab) e.className = e.className.concat(' active')
        }
    }
    // $("#tab4 .tab.2").className.replace('active','')
    
});