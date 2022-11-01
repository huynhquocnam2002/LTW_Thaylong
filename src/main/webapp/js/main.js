const home_li = document.querySelector('#admin-content .home-li')
const product_li = document.querySelector('#admin-content .product-li')
const order_li = document.querySelector('#admin-content .order-li')
const user_li = document.querySelector('#admin-content .user-li')
const voucher_li = document.querySelector('#admin-content .voucher-li')
const turnover_li = document.querySelector('#admin-content .turnover-li')
const design_li = document.querySelector('#admin-content .design-li')
const list_icon_up = document.querySelectorAll('#admin-content #leftContainer .icon-up')
const list_extend_button = document.querySelectorAll('#admin-content #rightContainer .manage-products-table .row-table-end .show-all-type-product')
const list_checkbox_all_product = document.querySelectorAll('#admin-content #rightContainer .check-all')
const list_checkbox_product = document.querySelectorAll('#admin-content #rightContainer .is-check')
const list_checkbox_main_product = document.querySelectorAll('#admin-content #rightContainer .row-table-main .is-check')
const list_checkbox_child_product = document.querySelectorAll('#admin-content #rightContainer .row-table-child .is-check')
const list_product_tab = document.querySelectorAll('#admin-content #rightContainer .manage-products-flex-tab')
const list_product_tab_head = document.querySelectorAll('#admin-content #rightContainer .flex-manage-products .flex-item')
const list_edit_button = document.querySelectorAll('#admin-content #rightContainer .manage-products .edit-button')
const list_edit_ok_button = document.querySelectorAll('#admin-content #rightContainer .manage-products .ok-button')
const list_edit_proceed_button = document.querySelectorAll('#admin-content #rightContainer .manage-products .edit-proceed')
const list_accept_proceed_button = document.querySelectorAll('#admin-content #rightContainer .manage-products .accept-proceed')
const list_delete_proceed_button = document.querySelectorAll('#admin-content #rightContainer .manage-products .delete-proceed')
const list_add_type_proceed_button = document.querySelectorAll('#admin-content #rightContainer .manage-products .add-type-proceed')
const list_quantity_type_of_product = document.querySelectorAll('#admin-content #rightContainer .manage-products .row-table-end .quantity-type')
const list_quantity_product_in_tab = document.querySelectorAll('#admin-content #rightContainer .manage-products .flex-item .quantity')
const quantity_checked_product = document.querySelector('#admin-content #rightContainer .manage-products .manage-products-filter-container .quantity')
const list_copy_button = document.querySelectorAll('#admin-content #rightContainer .manage-products .copy-icon')
const tool_selling_button = document.querySelector('#admin-content #rightContainer .manage-products .tool-button.selling-button')
const tool_stop_selling_button = document.querySelector('#admin-content #rightContainer .manage-products .tool-button.stop-selling-button')
const tool_delete_button = document.querySelector('#admin-content #rightContainer .manage-products .tool-button.delete-button')
const list_tool_button = document.querySelectorAll('#admin-content #rightContainer .manage-products .tool-button')
const search_button = document.querySelector('#admin-content #rightContainer .manage-products .input-filter .id-product-filter-div button .search-icon').parentElement
const search_input = document.querySelector('#admin-content #rightContainer .manage-products .input-filter .id-product-filter-div .id-product-filter').parentElement
const price_filter_input = document.querySelector('#admin-content #rightContainer .manage-products .input-filter .price-filter-select')
const category_filter_input = document.querySelector('#admin-content #rightContainer .manage-products .category-filter-select')
const sort_filter_input = document.querySelector('#admin-content #rightContainer .manage-products .other-filter-select')
const reset_filter_button = document.querySelector('#admin-content #rightContainer .manage-products .reset-filter-button')
const list_left_menu_item = document.querySelectorAll('#admin-content #leftContainer .list-tab .list-tab-li .tab-li-container-name')
const list_right_tab_item = document.querySelectorAll('#admin-content #rightContainer .right-tab')
const change_info_home_button=document.querySelector('#admin-content #rightContainer .info-table tr td .change-info')

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

function extendProduct(button) {
    let parent = button.parentElement.parentElement
    let list = parent.querySelectorAll('.row-table-child')
    for (let i of list) {
        i.style.display = 'table-row'
    }
    let down = parent.querySelector('.icon-down')
    let up = parent.querySelector('.icon-up')
    down.style.display = 'none'
    up.style.display = 'var(--fa-display,inline-block)'
}


function run() {
    //change info of admin
    change_info_home_button.onclick=function () {
        let table=change_info_home_button.parentElement.parentElement.parentElement
        let list_input=table.querySelectorAll('input')
        if (change_info_home_button.innerHTML!='Ok'){
            for (let i of list_input)
                i.disabled = false
            change_info_home_button.innerHTML = 'Ok'
        }else {
            for (let i of list_input)
                i.disabled = true
            change_info_home_button.innerHTML = 'Sửa đổi'
        }
    }

    //change tab by left menu
    for (let i=0; i<list_left_menu_item.length;i++) {
        list_left_menu_item[i].onclick = function () {
            if (list_left_menu_item[i].parentElement.querySelectorAll('div').length > 1)
                showChild(list_left_menu_item[i], 2)
            for (let j of list_left_menu_item){
                let parent_li=j.parentElement.parentElement
                if (parent_li.className.indexOf('tab-active')!=-1)
                    parent_li.className=parent_li.className.slice(0, parent_li.className.indexOf('tab-active')-1)
            }
            list_left_menu_item[i].parentElement.parentElement.className+=' tab-active'
            for (let j of list_right_tab_item){
                if (j.className.indexOf('active-right-tab')!=-1)
                    j.className=j.className.slice(0, j.className.indexOf('active-right-tab')-1)
            }
            list_right_tab_item[i].className+=' active-right-tab'

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

    //check all product
    for (let i of list_checkbox_all_product) {
        i.onchange = function () {
            let parent = i.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement
            let list = parent.querySelectorAll('.is-check')
            if (i.checked)
                for (let j of list)
                    j.checked = true
            else
                for (let j of list)
                    j.checked = false
            activeToolButton()
        }
    }
    for (let i of list_checkbox_child_product) {
        i.onchange = function () {
            let parent = i.parentElement.parentElement.parentElement.parentElement.parentElement
            let checkAll = parent.querySelector('.row-table-main .is-check')
            let list = parent.querySelectorAll('.row-table-child .is-check')
            let isCheckAll = true
            for (let j of list) {
                isCheckAll = isCheckAll && j.checked
                if (!isCheckAll) break
            }
            if (isCheckAll) checkAll.checked = true
            else checkAll.checked = false
            let check_all = document.querySelector('#admin-content #rightContainer .manage-products .active-product-tab .table-row-div-head-table .check-all')
            if (!i.checked) {
                check_all.checked = false
            } else {
                let list_all_checkbox = parent.parentElement.querySelectorAll('.row-table-child .is-check')
                let is_checked_all = true
                for (let j of list_all_checkbox) {
                    is_checked_all = is_checked_all && j.checked
                    if (!j.checked) break
                }
                if (is_checked_all) check_all.checked = true
                else check_all.checked = false
            }
            activeToolButton()
        }
    }
    for (let i of list_checkbox_main_product) {
        i.onchange = function () {
            let parent = i.parentElement.parentElement.parentElement.parentElement.parentElement
            let list = parent.querySelectorAll('.row-table-child .is-check')
            if (i.checked)
                for (let j of list)
                    j.checked = true
            else
                for (let j of list)
                    j.checked = false
            let check_all = document.querySelector('#admin-content #rightContainer .manage-products .active-product-tab .table-row-div-head-table .check-all')
            let is_check_all = true
            for (let j of list_checkbox_main_product) {
                is_check_all = is_check_all && j.checked
                if (!j.checked) break
            }
            if (is_check_all) check_all.checked = true
            else check_all.checked = false
            activeToolButton()
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
            activeToolButton()
        }
    }

    //edit product by icon
    for (let i of list_edit_button) {
        i.onclick = function () {
            let parent = i.parentElement
            let field = parent.querySelector('.editable')
            field.disabled = false
            field.style.borderBottom = '1px solid var(--grey)'
            let ok_button = parent.querySelector('.ok-button')
            i.style.display = 'none'
            ok_button.style.display = 'var(--fa-display,inline-block)'
        }
    }
    for (let i of list_edit_ok_button) {
        i.onclick = function () {
            let parent = i.parentElement
            let field = parent.querySelector('.editable')
            field.disabled = true
            field.style.borderBottom = 'none'
            let edit_button = parent.querySelector('.edit-button')
            i.style.display = 'none'
            edit_button.style.display = 'var(--fa-display,inline-block)'
            let timeUpdate = parent.parentElement.parentElement.parentElement.parentElement.querySelector('.product-update-date')
            timeUpdate.innerHTML = getTimeUpdate()
        }
    }

    //edit product by text
    for (let i of list_edit_proceed_button) {
        i.onclick = function () {
            let parent = i.parentElement.parentElement.parentElement
            let list_edit_bt = parent.querySelectorAll('.edit-button')
            for (let j of list_edit_bt)
                j.click()
            let status = parent.querySelector('select.product-status')
            status.style.display = 'block'
            let active_status = parent.querySelector('.active-status')
            active_status.style.display = 'none'
            let accept_button = parent.querySelector('.accept-proceed')
            i.style.display = 'none'
            accept_button.style.display = 'block'
        }
    }
    for (let i of list_accept_proceed_button) {
        i.onclick = function () {
            let parent = i.parentElement.parentElement.parentElement
            let list_ok_bt = parent.querySelectorAll('.ok-button')
            for (let j of list_ok_bt)
                j.click()
            let active_status = parent.querySelector('.active-status')
            active_status.style.display = ''
            let edit_button = parent.querySelector('.edit-proceed')
            i.style.display = 'none'
            edit_button.style.display = 'block'
            let statusS = parent.querySelector('select.product-status')
            let status = statusS.parentElement.querySelectorAll('.status')
            active_status.className = active_status.className.slice(0, active_status.className.indexOf('active-status') - 1)
            status[parseInt(statusS.value) + 1].className += ' active-status'
            statusS.style.display = 'none'
            if (parent.className.indexOf('row-table-main') != -1) {
                if (statusS.value == '-1') {
                    let table = parent.parentElement
                    let list_child = table.querySelectorAll('.row-table-child')
                    for (let j of list_child) {
                        let select = j.querySelector('select.product-status')
                        select.value = '-1'
                        j.querySelector('.active-status').className = j.querySelector('.active-status').className.slice(0, j.querySelector('.active-status').className.indexOf('active-status') - 1)
                        j.querySelector('.delete-p').className += ' active-status'
                    }
                }
            }
            let mainTimeUpdate = tr.parentElement.querySelector('.row-table-main .product-update-date')
            mainTimeUpdate.innerHTML = getTimeUpdate()
            let timeUpdate = parent.querySelector('.product-update-date')
            timeUpdate.innerHTML = getTimeUpdate()
        }
    }

    //delete product
    for (let i of list_delete_proceed_button) {
        i.onclick = function () {
            let tr = i.parentElement.parentElement.parentElement
            let statusS = tr.querySelector('select.product-status')
            statusS.value = '-1'
            let active_status = tr.querySelector('.active-status')
            if (active_status.className.indexOf('delete-p') == -1) {
                active_status.className = active_status.className.slice(0, active_status.className.indexOf('active-status') - 1)
                let delete_status = tr.querySelector('.delete-p')
                delete_status.className += ' active-status'
            }
            if (tr.className.indexOf('row-table-main') != -1) {
                let table = tr.parentElement
                let list_child = table.querySelectorAll('.row-table-child')
                for (let j of list_child) {
                    let select = j.querySelector('select.product-status')
                    select.value = '-1'
                    j.querySelector('.active-status').className = j.querySelector('.active-status').className.slice(0, j.querySelector('.active-status').className.indexOf('active-status') - 1)
                    j.querySelector('.delete-p').className += ' active-status'
                }

            }
            let mainTimeUpdate = tr.parentElement.querySelector('.row-table-main .product-update-date')
            mainTimeUpdate.innerHTML = getTimeUpdate()
            let timeUpdate = tr.querySelector('.product-update-date')
            timeUpdate.innerHTML = getTimeUpdate()
        }
    }

    //add type
    for (let i of list_add_type_proceed_button) {
        // i.onclick=function () {
        //     let table=i.parentElement.parentElement.parentElement.parentElement
        //     let name=table.querySelector('.product-name').value
        //     let id=table.querySelector('.product-id').innerHTML
        //     let new_product=`hehe
        //                         `
        //     table.innerHTML=table.innerHTML.slice(0,table.innerHTML.indexOf('</tr>')+5)+new_product+table.innerHTML.slice(table.innerHTML.indexOf('</tr>')+5,table.innerHTML.length)
        // }
    }

    //quantity type of product
    for (let i of list_quantity_type_of_product) {
        let table = i.parentElement.parentElement.parentElement.parentElement
        let num = table.querySelectorAll('tr').length - 2
        i.innerHTML = num + ''
    }

    //quantity product in tab
    for (let i = 0; i < list_quantity_product_in_tab.length; i++) {
        let num = 0
        if (list_product_tab[i] != undefined) {
            let list_table = list_product_tab[i].querySelectorAll('.table-row-div-product table')
            for (let j of list_table) {
                num += j.querySelectorAll('tr').length - 2
            }
            list_quantity_product_in_tab[i].innerHTML = num + ''
        }
    }

    //quantity product is checked

    numOfChecked()
    //copy ID
    for (let i of list_copy_button) {
        i.onclick = function () {
            let parent = i.parentElement
            navigator.clipboard.writeText(parent.querySelector('.id-span').innerHTML + '')
        }

    }
    //tool: start sell
    tool_selling_button.onclick = function () {
        for (let i of list_checkbox_product) {
            if (i.checked) {
                let tr = i.parentElement.parentElement.parentElement
                let select = tr.querySelector('.product-status')
                let active_status = tr.querySelector('.active-status')
                let selling_status = tr.querySelector('.selling-p')
                if (select.value != '1') {
                    select.value = '1'
                    active_status.className = active_status.className.slice(0, active_status.className.indexOf('active-status') - 1)
                    selling_status.className += ' active-status'
                }
            }
        }
    }

    //tool: stop sell
    tool_stop_selling_button.onclick = function () {
        for (let i of list_checkbox_product) {
            if (i.checked) {
                let tr = i.parentElement.parentElement.parentElement
                let select = tr.querySelector('.product-status')
                let active_status = tr.querySelector('.active-status')
                let stop_selling_status = tr.querySelector('.stop-selling-p')
                if (select.value != '2') {
                    select.value = '2'
                    active_status.className = active_status.className.slice(0, active_status.className.indexOf('active-status') - 1)
                    stop_selling_status.className += ' active-status'
                }
            }
        }
    }

    //tool: delete
    tool_delete_button.onclick = function () {
        for (let i of list_checkbox_product) {
            if (i.checked) {
                let tr = i.parentElement.parentElement.parentElement
                let select = tr.querySelector('.product-status')
                let active_status = tr.querySelector('.active-status')
                let delete_status = tr.querySelector('.delete-p')
                if (select.value != '-1') {
                    select.value = '-1'
                    active_status.className = active_status.className.slice(0, active_status.className.indexOf('active-status') - 1)
                    delete_status.className += ' active-status'
                }
            }
        }
    }

    //tool: search product
    search_button.onclick = function () {
        let parent = search_button.parentElement
        let input_text = parent.querySelector('.id-product-filter').value
        findProductByNameOrId(input_text)
    }
    search_input.onkeydown = function (event) {
        if (event.key == 'Enter') {
            let parent = search_input.parentElement
            let input_text = parent.querySelector('.id-product-filter').value
            findProductByNameOrId(input_text)
        }
    }

    price_filter_input.onchange = filterByPrice

    //category filter
    category_filter_input.onchange = filterByCategory

    //sort by decrease price
    sort_filter_input.onchange = sortByFilter

    //reset filter
    reset_filter_button.onclick = resetFilter

}

function resetFilter() {
    price_filter_input.value = '0'
    category_filter_input.value = '0'
    sort_filter_input.value = '0'
    filterByPrice()
    filterByCategory()
    sortByFilter()
}

function filterByPrice() {
    let input = document.querySelector('#admin-content #rightContainer .manage-products .price-filter-select')
    let list_main = document.querySelectorAll('#admin-content #rightContainer .manage-products .row-table-main')
    let list_end = document.querySelectorAll('#admin-content #rightContainer .manage-products .row-table-end')
    for (let i of list_main) {
        let list_extend = i.parentElement.querySelectorAll('.row-table-end .show-all-type-product')
        for (let j of list_extend) {
            let up = j.querySelector('.icon-up')
            if (up.style.display == 'var(--fa-display,inline-block)') j.click()
        }
    }
    switch (input.value) {
        case '0':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].className.indexOf('price-hide') != -1) {
                    list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('price-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('price-hide') + 10, list_main[i].className.length)
                    list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('price-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('price-hide') + 10, list_end[i].className.length)
                }
            }
            break
        case '1':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none') {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').value)
                    if (price >= 500000) {
                        if (list_main[i].className.indexOf('price-hide') == -1) {
                            list_main[i].className += ' price-hide'
                            list_end[i].className += ' price-hide'
                        }
                        console.log(1)
                    } else {
                        if (list_main[i].className.indexOf('price-hide') != -1) {
                            list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('price-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('price-hide') + 10, list_main[i].className.length)
                            list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('price-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('price-hide') + 10, list_end[i].className.length)
                        }
                    }
                }
            }
            break
        case '2':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none') {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').value)
                    if (price < 500000 || price >= 1000000) {
                        if (list_main[i].className.indexOf('price-hide') == -1) {
                            list_main[i].className += ' price-hide'
                            list_end[i].className += ' price-hide'
                        }
                    } else {
                        if (list_main[i].className.indexOf('price-hide') != -1) {
                            list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('price-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('price-hide') + 10, list_main[i].className.length)
                            list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('price-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('price-hide') + 10, list_end[i].className.length)
                        }
                    }
                }
            }
            break
        case '3':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none') {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').value)
                    if (price < 1000000 || price >= 2000000) {
                        if (list_main[i].className.indexOf('price-hide') == -1) {
                            list_main[i].className += ' price-hide'
                            list_end[i].className += ' price-hide'
                        }
                    } else {
                        if (list_main[i].className.indexOf('price-hide') != -1) {
                            list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('price-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('price-hide') + 10, list_main[i].className.length)
                            list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('price-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('price-hide') + 10, list_end[i].className.length)
                        }
                    }
                }
            }
            break
        case '4':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none') {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').value)
                    if (price < 2000000 || price >= 3000000) {
                        if (list_main[i].className.indexOf('price-hide') == -1) {
                            list_main[i].className += ' price-hide'
                            list_end[i].className += ' price-hide'
                        }
                    } else {
                        if (list_main[i].className.indexOf('price-hide') != -1) {
                            list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('price-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('price-hide') + 10, list_main[i].className.length)
                            list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('price-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('price-hide') + 10, list_end[i].className.length)
                        }
                    }
                }
            }
            break
        case '5':
            for (let i = 0; i < list_main.length; i++) {
                if (list_main[i].style.display != 'none') {
                    let price = parseInt(list_main[i].querySelector('.product-unit-price').value)
                    if (price < 3000000) {
                        if (list_main[i].className.indexOf('price-hide') == -1) {
                            list_main[i].className += ' price-hide'
                            list_end[i].className += ' price-hide'
                        }
                    } else {
                        if (list_main[i].className.indexOf('price-hide') != -1) {
                            list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('price-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('price-hide') + 10, list_main[i].className.length)
                            list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('price-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('price-hide') + 10, list_end[i].className.length)
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
            if (list_main[i].className.indexOf('category-hide') != -1) {
                list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('category-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('category-hide') + 10, list_main[i].className.length)
                list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('category-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('category-hide') + 10, list_end[i].className.length)
            }
        }
    } else
        for (let i = 0; i < list_main.length; i++) {
            if (list_main[i].querySelector('.product-type').innerHTML.indexOf(input) != -1) {
                if (list_main[i].className.indexOf('category-hide') != -1) {
                    list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('category-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('category-hide') + 10, list_main[i].className.length)
                    list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('category-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('category-hide') + 10, list_end[i].className.length)
                }
            } else {
                if (list_main[i].className.indexOf('category-hide') == -1) {
                    list_main[i].className += ' category-hide'
                    list_end[i].className += ' category-hide'
                }
            }
        }
}

function sortByFilter() {
    let input_sort = document.querySelector('#admin-content #rightContainer .manage-products .other-filter-select').value
    let container = document.querySelector('#admin-content #rightContainer .manage-products .table-row-div-product')
    let list = document.querySelectorAll('#admin-content #rightContainer .manage-products .table-row-div-product .manage-products-table')
    let list_main = document.querySelectorAll('#admin-content #rightContainer .manage-products .row-table-main')
    let arr = []
    for (let i of list_main) {
        let list_extend = i.parentElement.querySelectorAll('.row-table-end .show-all-type-product')
        for (let j of list_extend) {
            let up = j.querySelector('.icon-up')
            if (up.style.display == 'var(--fa-display,inline-block)') j.click()
        }
    }
    for (let i of list)
        arr.push(i)
    switch (input_sort) {
        case '0':
            arr.sort((a, b) => {
                if (parseInt(a.querySelector('.row-table-main .product-name').innerHTML) < parseInt(b.querySelector('.row-table-main .product-name').innerHTML)) {
                    return -1
                } else return 1
            })
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'decrease-price':
            arr.sort((a, b) =>
                -parseInt(a.querySelector('.row-table-main .product-unit-price').value) + parseInt(b.querySelector('.row-table-main .product-unit-price').value)
            )
            for (let i of arr) {
                container.appendChild(i)
            }
            break
        case 'increase-price':
            arr.sort((a, b) =>
                parseInt(a.querySelector('.row-table-main .product-unit-price').value) - parseInt(b.querySelector('.row-table-main .product-unit-price').value)
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

function findProductByNameOrId(input_text) {
    let manage_products = document.querySelector('.manage-products')
    let list_product = manage_products.querySelectorAll('.active-product-tab .table-row-div-product .row-table-main')
    for (let i of list_product) {
        let name = i.querySelector('.product-name').innerHTML
        let id = i.querySelector('.product-id .id-span').innerHTML
        if (name.indexOf(input_text) == -1 && id.indexOf(input_text) == -1) {
            i.parentElement.parentElement.style.display = 'none'
        } else {
            i.parentElement.parentElement.style.display = 'table'
        }
    }
}

function activeToolButton() {
    let num = numOfChecked()
    if (num != 0) {
        for (let i of list_tool_button) {
            i.disabled = false
        }
    } else {
        for (let i of list_tool_button) {
            i.disabled = true
        }
    }
}

function numOfChecked() {
    let res = 0
    let active_tab = document.querySelector('#admin-content #rightContainer .manage-products .active-product-tab')
    let list_checkbox = active_tab.querySelectorAll('.row-table-child input[type=checkbox]')
    for (let i of list_checkbox)
        if (i.checked) res++
    quantity_checked_product.innerHTML = res + ''
    return res
}

function getTimeUpdate() {
    let d = new Date();
    return d.getDate() + '/' + (d.getMonth() + 1) + '/' + d.getFullYear() + '<br>' + d.getHours() + ':' + d.getMinutes()
}

run()