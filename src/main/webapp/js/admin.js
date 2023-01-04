let list_icon_up = document.querySelectorAll('#admin-content #leftContainer .icon-up')
let list_extend_button = document.querySelectorAll('#admin-content #rightContainer .row-table-end .show-all-type-product')
let list_product_tab = document.querySelectorAll('#admin-content #rightContainer .manage-products-flex-tab')
let list_product_tab_head = document.querySelectorAll('#admin-content #rightContainer .flex-manage-products .flex-item')
let list_copy_button = document.querySelectorAll('#admin-content #rightContainer .copy-icon')
let search_product_button = document.querySelector('#admin-content #rightContainer .manage-products .input-filter .id-product-filter-div button .search-icon').parentElement
let search_order_button = document.querySelector('#admin-content #rightContainer .manage-orders .input-filter .id-order-filter-div button .search-icon').parentElement
let search_product_input = document.querySelector('#admin-content #rightContainer .manage-products .input-filter .id-product-filter-div .id-product-filter').parentElement
let search_order_input = document.querySelector('#admin-content #rightContainer .manage-orders .input-filter .id-order-filter-div .id-order-filter').parentElement
let price_filter_input = document.querySelector('#admin-content #rightContainer .manage-products .input-filter .price-filter-select')
let category_filter_input = document.querySelector('#admin-content #rightContainer .manage-products .category-filter-select')
let sort_filter_input = document.querySelector('#admin-content #rightContainer .manage-products .other-filter-select')
let reset_filter_button = document.querySelector('#admin-content #rightContainer .manage-products .reset-filter-button')
let list_left_menu_item = document.querySelectorAll('#admin-content #leftContainer .list-tab .list-tab-li .left-menu-item')
let list_right_tab_item = document.querySelectorAll('#admin-content #rightContainer .right-tab')
let list_orders_tab = document.querySelectorAll('#admin-content #rightContainer .manage-orders .manage-orders-flex-tab')
let list_users_tab = document.querySelectorAll('#admin-content #rightContainer .manage-users .manage-orders-flex-tab')
let list_vouchers_tab = document.querySelectorAll('#admin-content #rightContainer .manage-vouchers .manage-vouchers-flex-tab')
let list_orders_tab_head = document.querySelectorAll('#admin-content #rightContainer .manage-orders .flex-item')
let list_users_tab_head = document.querySelectorAll('#admin-content #rightContainer .manage-users .flex-item')
let list_vouchers_tab_head = document.querySelectorAll('#admin-content #rightContainer .manage-vouchers .flex-item')
let list_left_menu_item_show = document.querySelectorAll('#admin-content #leftContainer .list-tab .list-tab-li .menu-left-show')
let filter_price_order = document.querySelector("#rightContainer > div.manage-orders > div.manage-orders-filter-container > div > div > select.price-filter-select.filter-select")
let sort_order_input = document.querySelector("#rightContainer > div.manage-orders > div.manage-orders-filter-container > div > div > select.other-filter-select.filter-select")
let reset_tool_bt = document.querySelector("#rightContainer > div.manage-orders > div.manage-orders-filter-container > div > div > button")
let search_category_bt = document.querySelector("#rightContainer > div.right-tab.manage-categorys > div.manage-orders-filter-container > div > div > div > button")
let search_category_input = document.querySelector("#rightContainer > div.right-tab.manage-categorys > div.manage-orders-filter-container > div > div > div > input")
let filter_category = document.querySelector("#rightContainer > div.right-tab.manage-categorys > div.manage-orders-filter-container > div > div > select")
let reset_category =document.querySelector("#rightContainer > div.right-tab.manage-categorys > div.manage-orders-filter-container > div > div > button")
let search_producer_input = document.querySelector("#rightContainer > div.right-tab.manage-producer > div.manage-orders-filter-container > div > div.input-filter > div > input")
let search_producer_bt = document.querySelector("#rightContainer > div.right-tab.manage-producer > div.manage-orders-filter-container > div > div.input-filter > div > button")
let sort_producer_input = document.querySelector("#rightContainer > div.right-tab.manage-producer > div.manage-orders-filter-container > div > div.input-filter > select")
let reset_producer = document.querySelector("#rightContainer > div.right-tab.manage-producer > div.manage-orders-filter-container > div > div.input-filter > button")
let search_user_input = document.querySelector("#rightContainer > div.right-tab.manage-users > div.manage-orders-filter-container > div > div.input-filter > div > input")
let search_user_bt = document.querySelector("#rightContainer > div.right-tab.manage-users > div.manage-orders-filter-container > div > div.input-filter > div > button")
let sort_user = document.querySelector("#rightContainer > div.right-tab.manage-users > div.manage-orders-filter-container > div > div.input-filter > select.other-filter-select.filter-select")
let reset_user = document.querySelector("#rightContainer > div.right-tab.manage-users > div.manage-orders-filter-container > div > div.input-filter > button")
let search_voucher_input = document.querySelector("#rightContainer > div.right-tab.manage-vouchers > div.manage-orders-filter-container > div > div > div > input")
let search_voucher_bt = document.querySelector("#rightContainer > div.right-tab.manage-vouchers > div.manage-orders-filter-container > div > div > div > button")
let sort_voucher = document.querySelector("#rightContainer > div.right-tab.manage-vouchers > div.manage-orders-filter-container > div > div > select")
let reset_voucher = document.querySelector("#rightContainer > div.right-tab.manage-vouchers > div.manage-orders-filter-container > div > div > button")


//show list child in left menu admin
function showChild(li, num) {
    let parent = li
    for (let i = 0; i < num; i++) {
        parent = parent.parentElement
    }
    let list = parent.querySelectorAll('li')
    for (let i of list) {
        i.style.display = 'list-item'
    }
    let down = parent.querySelector('.icon-down')
    let up = parent.querySelector('.icon-up')
    down.style.display = 'none'
    up.style.display = 'var(--fa-display,inline-block)'
}


function run() {


    let list_product = document.querySelectorAll('#admin-content #rightContainer .manage-products .table-row-div-product .manage-products-table')

    //change tab by left menu
    for (let i = 0; i < list_left_menu_item.length; i++) {
        list_left_menu_item[i].onclick = function () {
            if (list_left_menu_item[i].parentElement.querySelectorAll('div').length > 1)
                showChild(list_left_menu_item[i], 2)
            for (let j of list_left_menu_item) {
                let parent_li = j.parentElement.parentElement
                if (parent_li.className.indexOf('tab-active') != -1)
                    parent_li.className = parent_li.className.slice(0, parent_li.className.indexOf('tab-active') - 1)
            }
            list_left_menu_item[i].parentElement.parentElement.className += ' tab-active'
            for (let j of list_left_menu_item) {
                if (j.tagName == 'LI') if (j.className.indexOf('tab-active') != -1)
                    j.className = j.className.slice(0, j.className.indexOf('tab-active') - 1)
            }
            if (list_left_menu_item[i].tagName == 'LI') {
                list_left_menu_item[i].className += ' tab-active'
            }
            for (let j of list_right_tab_item) {
                if (j.className.indexOf('active-right-tab') != -1)
                    j.className = j.className.slice(0, j.className.indexOf('active-right-tab') - 1)
            }
            list_right_tab_item[i].className += ' active-right-tab'

        }
    }
    for (let i of list_left_menu_item_show) {
        i.onclick = function () {
            showChild(i, 2)
            i.parentElement.parentElement.querySelector('ul li').click()
        }
    }

    //hide drop down left menu
    for (let i of list_icon_up) {
        i.onclick = function () {

            let parent = i.parentElement.parentElement.parentElement
            let list = parent.querySelectorAll('li')
            for (let j of list) {
                j.style.display = 'none'
            }
            let down = parent.querySelector('.icon-down')
            let up = parent.querySelector('.icon-up')
            up.style.display = 'none'
            down.style.display = 'var(--fa-display,inline-block)'
        }
    }
    //extend product
    for (let i of list_extend_button) {
        i.onclick = function () {
            let parent = i.parentElement.parentElement
            let list = parent.querySelectorAll('.row-table-child')
            let down = i.querySelector('.icon-down')
            let up = i.querySelector('.icon-up')
            let ex = i.querySelector('.extend-product')
            let min = i.querySelector('.min-product')

            if (down.style.display == 'var(--fa-display,inline-block)' || down.style.display == '') {
                for (let j of list) {
                    j.style.display = 'table-row'
                }
                down.style.display = 'none'
                up.style.display = 'var(--fa-display,inline-block)'
                ex.style.display = 'none'
                min.style.display = 'unset'
            } else {
                for (let j of list) {
                    j.style.display = 'none'
                }
                up.style.display = 'none'
                down.style.display = 'var(--fa-display,inline-block)'
                min.style.display = 'none'
                ex.style.display = 'unset'
            }
        }
    }

    //change product tab
    for (let i = 0; i < list_product_tab_head.length; i++) {
        list_product_tab_head[i].onclick = function () {
            let active_tab_head = document.querySelector('#admin-content #rightContainer .manage-products .active-tab')
            let active_tab = document.querySelector('#admin-content #rightContainer .manage-products .active-product-tab')
            active_tab_head.className = active_tab_head.className.slice(0, active_tab_head.className.indexOf('active-tab'))
            active_tab.className = active_tab.className.slice(0, active_tab.className.indexOf('active-product-tab'))
            list_product_tab_head[i].className += ' active-tab'
            list_product_tab[i].className += ' active-product-tab'
        }
    }

    //change order tab
    for (let i = 0; i < list_orders_tab_head.length; i++) {
        list_orders_tab_head[i].onclick = function () {
            let active_tab_head = document.querySelector('#admin-content #rightContainer .manage-orders .active-tab')
            let active_tab = document.querySelector('#admin-content #rightContainer .manage-orders .active-order-tab')
            active_tab_head.className = active_tab_head.className.slice(0, active_tab_head.className.indexOf('active-tab') - 1)
            active_tab.className = active_tab.className.slice(0, active_tab.className.indexOf('active-order-tab') - 1)
            list_orders_tab_head[i].className += ' active-tab'
            list_orders_tab[i].className += ' active-order-tab'
        }
    }

    //change user tab
    for (let i = 0; i < list_users_tab_head.length; i++) {
        list_users_tab_head[i].onclick = function () {
            let active_tab_head = document.querySelector('#admin-content #rightContainer .manage-users .active-tab')
            let active_tab = document.querySelector('#admin-content #rightContainer .manage-users .active-order-tab')
            active_tab_head.className = active_tab_head.className.slice(0, active_tab_head.className.indexOf('active-tab') - 1)
            active_tab.className = active_tab.className.slice(0, active_tab.className.indexOf('active-order-tab') - 1)
            list_users_tab_head[i].className += ' active-tab'
            list_users_tab[i].className += ' active-order-tab'
        }
    }

    //change voucher tab
    for (let i = 0; i < list_vouchers_tab_head.length; i++) {
        list_vouchers_tab_head[i].onclick = function () {
            let active_tab_head = document.querySelector('#admin-content #rightContainer .manage-vouchers .active-tab')
            let active_tab = document.querySelector('#admin-content #rightContainer .manage-vouchers .active-voucher-tab')
            active_tab_head.className = active_tab_head.className.slice(0, active_tab_head.className.indexOf('active-tab') - 1)
            active_tab.className = active_tab.className.slice(0, active_tab.className.indexOf('active-voucher-tab') - 1)
            list_vouchers_tab_head[i].className += ' active-tab'
            list_vouchers_tab[i].className += ' active-voucher-tab'
        }
    }


    //copy ID
    for (let i of list_copy_button) {
        i.onclick = function () {
            let parent = i.parentElement
            navigator.clipboard.writeText(parent.querySelector('.id-span').innerHTML + '')
        }
    }

    //tool: search product
    search_product_button.onclick = function () {
        let parent = search_product_button.parentElement
        let input_text = parent.querySelector('.id-product-filter').value
        findProductByNameOrId(input_text)
    }
    search_product_input.querySelector('.id-product-filter').onkeyup = function () {
        findProductByNameOrId(search_product_input.querySelector('.id-product-filter').value)
    }

    //tool: search order by order-id or product-id or user-id
    search_order_button.onclick = function () {
        let parent = search_order_button.parentElement
        let input_text = parent.querySelector('.id-order-filter').value
        findOrderByNameOrId(input_text)
    }
    search_order_input.querySelector('.id-order-filter').onkeyup = function () {
        findOrderByNameOrId(search_order_input.querySelector('.id-order-filter').value)
    }

    //search category
    search_category_bt.onclick = function () {
        let parent = search_category_bt.parentElement
        let input_text = parent.querySelector('.id-order-filter').value
        findCategory(input_text)
    }
    search_category_input.onkeyup = function () {
        findCategory(this.value)
    }

    //search producer
    search_producer_bt.onclick = function () {
        let parent = search_category_bt.parentElement
        let input_text = parent.querySelector('.id-order-filter').value
        findProducer(input_text)
    }
    search_producer_input.onkeyup = function () {
        findProducer(this.value)
    }

    //search user
    search_user_bt.onclick = function () {
        let parent = search_user_bt.parentElement
        let input_text = parent.querySelector('.id-order-filter').value
        findUser(input_text)
    }
    search_user_input.onkeyup = function () {
        findUser(this.value)
    }

    //search voucher
    search_voucher_bt.onclick = function () {
        let parent = search_voucher_bt.parentElement
        let input_text = parent.querySelector('.id-order-filter').value
        findVoucher(input_text)
    }
    search_voucher_input.onkeyup = function () {
        findVoucher(this.value)
    }

    price_filter_input.onchange = filterByPrice

    //category filter
    category_filter_input.onchange = filterByCategory

    //sort by decrease price
    sort_filter_input.onchange = sortByFilter

    //reset filter
    reset_filter_button.onclick = resetFilter

    //filter order by price
    filter_price_order.onchange = filterOrderByPrice

    //sort order
    sort_order_input.onchange = sortOrderByFilter

    // reset order filter
    reset_tool_bt.onclick = resetOrderFilter

    //sort category
    filter_category.onchange = sortCategory

    //sort producer
    sort_producer_input.onchange = sortProducer

    //sort user
    sort_user.onchange = sortUser

    //reset category
    reset_category.onclick = resetCategoryFilter

    //reset producer
    reset_producer.onclick = resetProducerFilter

    //reset user
    reset_user.onclick = resetUserFilter

    //sort voucher
    sort_voucher.onchange = sortVoucher

    //reset voucher
    reset_voucher.onclick = resetVoucher

}

function resetFilter() {
    price_filter_input.value = '0'
    category_filter_input.value = '0'
    sort_filter_input.value = '0'
    search_product_input.querySelector('input').value = ''
    filterByPrice()
    filterByCategory()
    sortByFilter()
    search_product_button.click()
}

function resetOrderFilter() {
    filter_price_order.value = '0'
    sort_order_input.value = '0'
    search_order_input.querySelector('input').value = ''
    filterOrderByPrice()
    sortOrderByFilter()
    search_order_button.click()
}

function resetCategoryFilter(){
    filter_category.value = '0'
    search_category_input.value = ''
    sortCategory()
    search_category_bt.click()
}

function resetProducerFilter(){
    sort_producer_input.value = '0'
    search_producer_input.value = ''
    sortProducer()
    search_producer_bt.click()
}

function resetUserFilter(){
    sort_user.value = '0'
    search_user_input.value = ''
    sortUser()
    search_user_bt.click()
}

function resetVoucher(){
    sort_voucher.value = '0'
    search_voucher_input.value = ''
    sortVoucher()
    search_voucher_bt.click()
}



function filterByPrice() {
    let input = document.querySelector('#admin-content #rightContainer .manage-products .price-filter-select')
    let list_main = document.querySelectorAll('#admin-content #rightContainer .manage-products .row-table-main')
    for (let i of list_main) {
        let list_extend = i.parentElement.querySelectorAll('.row-table-end .show-all-type-product')
        for (let j of list_extend) {
            let up = j.querySelector('.icon-up')
            if (up.style.display == 'var(--fa-display,inline-block)') j.click()
        }
    }
    for (let i = 0; i < list_main.length; i++) {
        let parent = list_main[i].parentElement.parentElement
        if (parent.className.indexOf('price-hide') != -1) {
            parent.classList.remove('price-hide')
        }
    }
    switch (input.value) {
        case '0':
            for (let i = 0; i < list_main.length; i++) {
                let parent = list_main[i].parentElement.parentElement
                if (parent.className.indexOf('price-hide') != -1) {
                    parent.classList.remove('price-hide')
                }
            }
            break
        case '1':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none' && list_main[i].querySelector('.product-unit-price') != null) {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').innerText)
                    let parent = list_main[i].parentElement.parentElement
                    if (price >= 500000) {
                        if (parent.className.indexOf('price-hide') == -1) {
                            parent.className += ' price-hide'
                        }
                    } else {
                        if (list_main[i].className.indexOf('price-hide') != -1) {
                            parent.classList.remove('price-hide')
                        }
                    }
                }
            }
            break
        case '2':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none' && list_main[i].querySelector('.product-unit-price') != null) {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').innerText)
                    let parent = list_main[i].parentElement.parentElement
                    if (price < 500000 || price >= 1000000) {
                        if (parent.className.indexOf('price-hide') == -1) {
                            parent.className += ' price-hide'
                        }
                    } else {
                        if (parent.className.indexOf('price-hide') != -1) {
                            parent.classList.remove('price-hide')
                        }
                    }
                }
            }
            break
        case '3':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none' && list_main[i].querySelector('.product-unit-price') != null) {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').innerText)
                    let parent = list_main[i].parentElement.parentElement
                    if (price < 1000000 || price >= 2000000) {
                        if (parent.className.indexOf('price-hide') == -1) {
                            parent.className += ' price-hide'
                        }
                    } else {
                        if (parent.className.indexOf('price-hide') != -1) {
                            parent.classList.remove('price-hide')
                        }
                    }
                }
            }
            break
        case '4':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none' && list_main[i].querySelector('.product-unit-price') != null) {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').innerText)
                    let parent = list_main[i].parentElement.parentElement
                    if (price < 2000000 || price >= 3000000) {
                        if (parent.className.indexOf('price-hide') == -1) {
                            parent.className += ' price-hide'
                        }
                    } else {
                        if (parent.className.indexOf('price-hide') != -1) {
                            parent.classList.remove('price-hide')
                        }
                    }
                }
            }
            break
        case '5':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none' && list_main[i].querySelector('.product-unit-price') != null) {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').innerText)
                    let parent = list_main[i].parentElement.parentElement
                    if (price < 3000000) {
                        if (parent.className.indexOf('price-hide') == -1) {
                            parent.className += ' price-hide'
                        }
                    } else {
                        if (parent.className.indexOf('price-hide') != -1) {
                            parent.classList.remove('price-hide')
                        }
                    }
                }

            }
            break
    }
}

function filterOrderByPrice() {
    let input = document.querySelector('#admin-content #rightContainer .manage-orders .price-filter-select')
    let list_main = document.querySelectorAll('#admin-content #rightContainer .manage-orders .row-table-main')
    for (let i of list_main) {
        let list_extend = i.parentElement.querySelectorAll('.row-table-end .show-all-type-product')
        for (let j of list_extend) {
            let up = j.querySelector('.icon-up')
            if (up.style.display == 'var(--fa-display,inline-block)') j.click()
        }
    }
    for (let i = 0; i < list_main.length; i++) {
        let parent = list_main[i].parentElement.parentElement
        if (parent.className.indexOf('price-hide') != -1) {
            parent.classList.remove('price-hide')
        }
    }
    switch (input.value) {
        case '0':
            for (let i = 0; i < list_main.length; i++) {
                let parent = list_main[i].parentElement.parentElement
                if (parent.className.indexOf('price-hide') != -1) {
                    parent.classList.remove('price-hide')
                }
            }
            break
        case '1':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none' && list_main[i].querySelector('.product-unit-price') != null) {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').innerText)
                    let parent = list_main[i].parentElement.parentElement
                    if (price >= 500000) {
                        if (parent.className.indexOf('price-hide') == -1) {
                            parent.className += ' price-hide'
                        }
                    } else {
                        if (list_main[i].className.indexOf('price-hide') != -1) {
                            parent.classList.remove('price-hide')
                        }
                    }
                }
            }
            break
        case '2':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none' && list_main[i].querySelector('.product-unit-price') != null) {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').innerText)
                    let parent = list_main[i].parentElement.parentElement
                    if (price < 500000 || price >= 1000000) {
                        if (parent.className.indexOf('price-hide') == -1) {
                            parent.className += ' price-hide'
                        }
                    } else {
                        if (parent.className.indexOf('price-hide') != -1) {
                            parent.classList.remove('price-hide')
                        }
                    }
                }
            }
            break
        case '3':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none' && list_main[i].querySelector('.product-unit-price') != null) {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').innerText)
                    let parent = list_main[i].parentElement.parentElement
                    if (price < 1000000 || price >= 2000000) {
                        if (parent.className.indexOf('price-hide') == -1) {
                            parent.className += ' price-hide'
                        }
                    } else {
                        if (parent.className.indexOf('price-hide') != -1) {
                            parent.classList.remove('price-hide')
                        }
                    }
                }
            }
            break
        case '4':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none' && list_main[i].querySelector('.product-unit-price') != null) {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').innerText)
                    let parent = list_main[i].parentElement.parentElement
                    if (price < 2000000 || price >= 3000000) {
                        if (parent.className.indexOf('price-hide') == -1) {
                            parent.className += ' price-hide'
                        }
                    } else {
                        if (parent.className.indexOf('price-hide') != -1) {
                            parent.classList.remove('price-hide')
                        }
                    }
                }
            }
            break
        case '5':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none' && list_main[i].querySelector('.product-unit-price') != null) {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').innerText)
                    let parent = list_main[i].parentElement.parentElement
                    if (price < 3000000) {
                        if (parent.className.indexOf('price-hide') == -1) {
                            parent.className += ' price-hide'
                        }
                    } else {
                        if (parent.className.indexOf('price-hide') != -1) {
                            parent.classList.remove('price-hide')
                        }
                    }
                }

            }
            break
    }
}

function filterByCategory() {
    let input = document.querySelector('#admin-content #rightContainer .manage-products .category-filter-select').value
    let list_main = document.querySelectorAll('#admin-content #rightContainer .manage-products .row-table-main')
    let list_end = document.querySelectorAll('#admin-content #rightContainer .manage-products .row-table-end')
    for (let i of list_main) {
        let list_extend = i.parentElement.querySelectorAll('.row-table-end .show-all-type-product')
        for (let j of list_extend) {
            let up = j.querySelector('.icon-up')
            if (up.style.display == 'var(--fa-display,inline-block)') j.click()
        }
    }
    if (input == '0') {
        for (let i = 0; i < list_main.length; i++) {
            let parent = list_main[i].parentElement.parentElement
            if (parent.className.indexOf('category-hide') != -1) {
                parent.classList.remove('category-hide')
            }
        }
    } else
        for (let i = 0; i < list_main.length; i++) {
            let parent = list_main[i].parentElement.parentElement
            if (list_main[i].querySelector('.product-type').innerHTML.indexOf(input) != -1) {
                if (parent.className.indexOf('category-hide') != -1) {
                    parent.classList.remove('category-hide')
                }
            } else {
                if (parent.className.indexOf('category-hide') == -1) {
                    parent.className += ' category-hide'
                }
            }
        }
}

function sortByFilter() {
    let input_sort = document.querySelector('#admin-content #rightContainer .manage-products .other-filter-select').value
    let container = document.querySelector('#admin-content #rightContainer .manage-products .active-product-tab .table-row-div-product')
    let list = document.querySelectorAll('#admin-content #rightContainer .manage-products .active-product-tab .table-row-div-product .manage-products-table')
    let list_main = document.querySelectorAll('#admin-content #rightContainer .manage-products .active-product-tab .row-table-main')
    let arr = []
    for (let i of list_main) {
        let list_extend = i.parentElement.querySelectorAll('.row-table-end .show-all-type-product')
        for (let j of list_extend) {
            let up = j.querySelector('.icon-up')
            if (up.style.display == 'var(--fa-display,inline-block)') j.click()
        }
    }
    for (let i of list) {
        if (i.querySelector('.row-table-main .product-name') != null)
            arr.push(i)
    }
    switch (input_sort) {
        case '0':
            arr.sort((a, b) => {
                return a.querySelector('.row-table-main .product-name').innerHTML.localeCompare(b.querySelector('.row-table-main .product-name').innerHTML);
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'decrease-price':
            arr.sort((a, b) =>
                -parseInt(a.querySelector('.row-table-main .product-unit-price').innerText) + parseInt(b.querySelector('.row-table-main .product-unit-price').innerText)
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'increase-price':
            arr.sort((a, b) =>
                parseInt(a.querySelector('.row-table-main .product-unit-price').innerText) - parseInt(b.querySelector('.row-table-main .product-unit-price').innerText)
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'decrease-quantity':
            arr.sort((a, b) =>
                -parseInt(a.querySelector('.row-table-main .product-quantity').value) + parseInt(b.querySelector('.row-table-main .product-quantity').value)
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'increase-quantity':
            arr.sort((a, b) =>
                parseInt(a.querySelector('.row-table-main .product-quantity').value) - parseInt(b.querySelector('.row-table-main .product-quantity').value)
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
    }

}

function sortOrderByFilter() {
    let input_sort = document.querySelector("#rightContainer > div.manage-orders > div.manage-orders-filter-container > div > div > select.other-filter-select.filter-select").value
    let container = document.querySelector('#admin-content #rightContainer .manage-orders .active-order-tab .table-row-div-order')
    let list = document.querySelectorAll('#admin-content #rightContainer .manage-orders .active-order-tab .table-row-div-order .manage-order-table')
    let list_main = document.querySelectorAll('#admin-content #rightContainer .manage-orders .active-order-tab .row-table-main')
    let arr = []
    for (let i of list_main) {
        let list_extend = i.parentElement.querySelectorAll('.row-table-end .show-all-type-product')
        for (let j of list_extend) {
            let up = j.querySelector('.icon-up')
            if (up.style.display == 'var(--fa-display,inline-block)') j.click()
        }
    }
    for (let i of list) {
        arr.push(i)
    }
    switch (input_sort) {
        case '0':
            arr.sort((a, b) => {
                return a.querySelector('.row-table-main .order-id .id-span').innerText.localeCompare(b.querySelector('.row-table-main .order-id .id-span').innerText);
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'decrease-price':
            arr.sort((a, b) =>
                -parseInt(a.querySelector('.row-table-main .product-unit-price').innerText) + parseInt(b.querySelector('.row-table-main .product-unit-price').innerText)
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'increase-price':
            arr.sort((a, b) =>
                parseInt(a.querySelector('.row-table-main .product-unit-price').innerText) - parseInt(b.querySelector('.row-table-main .product-unit-price').innerText)
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'decrease-quantity':
            arr.sort((a, b) =>
                new Date(a.querySelector('.row-table-main .update-date-col .product-update-date').innerText).getTime() - new Date(b.querySelector('.row-table-main .update-date-col .product-update-date').innerText).getTime()
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'increase-quantity':
            arr.sort((a, b) =>
                -new Date(a.querySelector('.row-table-main .update-date-col .product-update-date').innerText).getTime() + new Date(b.querySelector('.row-table-main .update-date-col .product-update-date').innerText).getTime()
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
    }

}

function sortCategory() {
    let input_sort = document.querySelector("#rightContainer > div.right-tab.manage-categorys.active-right-tab > div.manage-orders-filter-container > div > div > select").value
    let container = document.querySelector('#admin-content #rightContainer .manage-categorys .table-row-div-order')
    let list = document.querySelectorAll('#admin-content #rightContainer .manage-categorys .table-row-div-order .manage-order-table')
    let arr = []
    for (let i of list) {
        arr.push(i)
    }
    switch (input_sort) {
        case '0':
            arr.sort((a, b) => {
                return a.querySelector('.row-table-main .order-id .id-span').innerText.localeCompare(b.querySelector('.row-table-main .order-id .id-span').innerText);
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'decrease-price':
            arr.sort((a, b) => {
                return a.querySelector('.row-table-main .product-unit-price').innerText.localeCompare(b.querySelector('.row-table-main .product-unit-price').innerText);
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'increase-price':
            arr.sort((a, b) => {
                return -a.querySelector('.row-table-main .product-unit-price').innerText.localeCompare(b.querySelector('.row-table-main .product-unit-price').innerText);
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
    }

}

function sortProducer() {
    let input_sort = document.querySelector("#rightContainer > div.right-tab.manage-producer > div.manage-orders-filter-container > div > div.input-filter > select").value
    let container = document.querySelector('#admin-content #rightContainer .manage-producer .table-row-div-order')
    let list = document.querySelectorAll('#admin-content #rightContainer .manage-producer .table-row-div-order .manage-order-table')
    let arr = []
    for (let i of list) {
        arr.push(i)
    }
    switch (input_sort) {
        case '0':
            arr.sort((a, b) => {
                return a.querySelector('.row-table-main .order-id .id-span').innerText.localeCompare(b.querySelector('.row-table-main .order-id .id-span').innerText);
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'decrease-price':
            arr.sort((a, b) => {
                return a.querySelector('.row-table-main .product-unit-price').innerText.localeCompare(b.querySelector('.row-table-main .product-unit-price').innerText);
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'increase-price':
            arr.sort((a, b) => {
                return -a.querySelector('.row-table-main .product-unit-price').innerText.localeCompare(b.querySelector('.row-table-main .product-unit-price').innerText);
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
    }

}

function sortUser() {
    let input_sort = document.querySelector("#rightContainer > div.right-tab.manage-users > div.manage-orders-filter-container > div > div.input-filter > select.other-filter-select.filter-select").value
    let container = document.querySelector('#admin-content #rightContainer .manage-users .active-order-tab .table-row-div-order')
    let list = document.querySelectorAll('#admin-content #rightContainer .manage-users .active-order-tab .table-row-div-order .manage-order-table')
    let arr = []
    for (let i of list) {
        arr.push(i)
    }
    switch (input_sort) {
        case '0':
            arr.sort((a, b) => {
                return a.querySelector('.row-table-main .product-id .id-span').innerText.localeCompare(b.querySelector('.row-table-main .product-id .id-span').innerText);
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'decrease-price':
            arr.sort((a, b) => {
                return a.querySelector('.row-table-main .user-name').innerText.localeCompare(b.querySelector('.row-table-main .user-name').innerText);
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'increase-price':
            arr.sort((a, b) => {
                return -a.querySelector('.row-table-main .user-name').innerText.localeCompare(b.querySelector('.row-table-main .user-name').innerText);
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'decrease-quantity':
            arr.sort((a, b) =>
                new Date(a.querySelector('.row-table-main .update-date-col .product-update-date').innerText).getTime() - new Date(b.querySelector('.row-table-main .update-date-col .product-update-date').innerText).getTime()
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'increase-quantity':
            arr.sort((a, b) =>
                -new Date(a.querySelector('.row-table-main .update-date-col .product-update-date').innerText).getTime() + new Date(b.querySelector('.row-table-main .update-date-col .product-update-date').innerText).getTime()
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
    }

}

function sortVoucher() {
    let input_sort = document.querySelector("#rightContainer > div.right-tab.manage-vouchers > div.manage-orders-filter-container > div > div > select").value
    let container = document.querySelector('#admin-content #rightContainer .manage-vouchers .active-voucher-tab .table-row-div-order')
    let list = document.querySelectorAll('#admin-content #rightContainer .manage-vouchers .active-voucher-tab .table-row-div-order .manage-order-table')
    let arr = []
    for (let i of list) {
        arr.push(i)
    }
    switch (input_sort) {
        case '0':
            arr.sort((a, b) => {
                return a.querySelector('.row-table-main .product-id .id-span').innerText.localeCompare(b.querySelector('.row-table-main .product-id .id-span').innerText);
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'decrease-price':
            arr.sort((a, b) =>
                -parseInt(a.querySelector('.row-table-main .discount-div p').innerText) + parseInt(b.querySelector('.row-table-main .discount-div p').innerText)
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'increase-price':
            arr.sort((a, b) =>
                parseInt(a.querySelector('.row-table-main .discount-div p').innerText) - parseInt(b.querySelector('.row-table-main .discount-div p').innerText)
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'decrease-quantity':
            arr.sort((a, b) =>
                new Date(a.querySelector('.row-table-main .update-date-col .update-date-div.start p').innerText).getTime() - new Date(b.querySelector('.row-table-main .update-date-col .update-date-div.start p').innerText).getTime()
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'increase-quantity':
            arr.sort((a, b) =>
                -new Date(a.querySelector('.row-table-main .update-date-col .update-date-div.start p').innerText).getTime() + new Date(b.querySelector('.row-table-main .update-date-col .update-date-div.start p').innerText).getTime()
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case '5':
            arr.sort((a, b) =>
                new Date(a.querySelector('.row-table-main .update-date-col .update-date-div.end p').innerText).getTime() - new Date(b.querySelector('.row-table-main .update-date-col .update-date-div.end p').innerText).getTime()
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case '6':
            arr.sort((a, b) =>
                -new Date(a.querySelector('.row-table-main .update-date-col .update-date-div.end p').innerText).getTime() + new Date(b.querySelector('.row-table-main .update-date-col .update-date-div.end p').innerText).getTime()
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
    }

}

function findProductByNameOrId(input_text) {
    let manage_products = document.querySelector('.manage-products')
    let list_product = manage_products.querySelectorAll('.active-product-tab .table-row-div-product .row-table-main')
    for (let i of list_product) {
        if (i.querySelector('.product-name') != null) {
            let name = i.querySelector('.product-name').innerHTML.toLowerCase()
            let id = i.querySelector('.product-id .id-span').innerHTML
            if (name.indexOf(input_text.toLowerCase()) == -1 && id.indexOf(input_text) == -1) {
                i.parentElement.parentElement.classList.add('search-hide')
            } else {
                i.parentElement.parentElement.classList.remove('search-hide')
            }
        }
    }
}

function findCategory(input_text) {
    let manage_products = document.querySelector('.manage-categorys')
    let list_product = manage_products.querySelectorAll('.table-row-div-order table.manage-order-table')
    for (let i of list_product) {
        if (i.querySelector('.order-id') != null) {
            let name = i.querySelector('p.product-unit-price').innerHTML.toLowerCase()
            let id = i.querySelector('.order-id .id-span').innerHTML
            if (name.indexOf(input_text.toLowerCase()) == -1 && id.indexOf(input_text) == -1) {
                i.classList.add('search-hide')
            } else {
                i.classList.remove('search-hide')
            }
        }
    }
}

function findProducer(input_text) {
    let manage_products = document.querySelector('.manage-producer')
    let list_product = manage_products.querySelectorAll('.table-row-div-order table.manage-order-table')
    for (let i of list_product) {
        if (i.querySelector('.order-id') != null) {
            let name = i.querySelector('p.product-unit-price').innerHTML.toLowerCase()
            let id = i.querySelector('.order-id .id-span').innerHTML
            if (name.indexOf(input_text.toLowerCase()) == -1 && id.indexOf(input_text) == -1) {
                i.classList.add('search-hide')
            } else {
                i.classList.remove('search-hide')
            }
        }
    }
}

function findUser(input_text) {
    let manage_products = document.querySelector('.manage-users')
    let list_product = manage_products.querySelectorAll('.active-order-tab .table-row-div-order table.manage-order-table')
    for (let i of list_product) {
        if (i.querySelector('.user-name') != null) {
            let name = i.querySelector('p.user-name').innerText.toLowerCase()
            let id = i.querySelector('.product-id .id-span').innerText
            if (name.indexOf(input_text.toLowerCase()) == -1 && id.indexOf(input_text) == -1) {
                i.classList.add('search-hide')
            } else {
                i.classList.remove('search-hide')
            }
        }
    }
}

function findVoucher(input_text) {
    let manage_products = document.querySelector('.manage-vouchers')
    let list_product = manage_products.querySelectorAll('.active-voucher-tab .table-row-div-order table.manage-order-table')
    for (let i of list_product) {
        if (i.querySelector('.name-block') != null) {
            let name = i.querySelector('.name-block p').innerText.toLowerCase()
            let id = i.querySelector('.product-id .id-span').innerText
            if (name.indexOf(input_text.toLowerCase()) == -1 && id.indexOf(input_text) == -1) {
                i.classList.add('search-hide')
            } else {
                i.classList.remove('search-hide')
            }
        }
    }
}

function findOrderByNameOrId(input_text) {
    let manage_orders = document.querySelector('.manage-orders')
    let list_order = manage_orders.querySelectorAll('.active-order-tab .table-row-div-order .manage-order-table')
    for (let i of list_order) {
        let isContainProductName = false, isContainProductId = false
        let order_id = i.querySelector('.order-id .id-span').innerHTML
        let list_product_name = i.querySelectorAll('.product-name')
        let list_product_id = i.querySelectorAll('.product-id .id-span')
        let user_name = i.querySelector('.user-name').innerHTML
        let user_id = i.querySelector('.user-id .id-span').innerHTML
        for (let i of list_product_name) {
            if (i.innerHTML.indexOf(input_text) != -1) {
                isContainProductName = true
                break
            }
        }
        for (let i of list_product_id) {
            if (i.innerHTML.indexOf(input_text) != -1) {
                isContainProductId = true
                break
            }
        }
        if (order_id.indexOf(input_text) == -1 && user_id.indexOf(input_text) == -1 && user_name.indexOf(input_text) == -1 && !isContainProductName && !isContainProductId) {
            i.classList.add('search-hide')
        } else {
            i.classList.remove('search-hide')
        }
    }
}


run()