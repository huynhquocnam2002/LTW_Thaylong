const home_li = document.querySelector('#admin-content .home-li')
const product_li = document.querySelector('#admin-content .product-li')
const order_li=document.querySelector('#admin-content .order-li')
const user_li = document.querySelector('#admin-content .user-li')
const voucher_li=document.querySelector('#admin-content .voucher-li')
const turnover_li=document.querySelector('#admin-content .turnover-li')
const design_li=document.querySelector('#admin-content .design-li')

const list_icon_up=document.querySelectorAll('.icon-up')



function showChild(li, num){
    let parent=li
    for (let i=0;i<num;i++){
        parent=parent.parentElement
    }
    let list=parent.querySelectorAll('li')
    for (let i of list){
        i.style.display='list-item'
    }
    let down=parent.querySelector('.icon-down')
    let up=parent.querySelector('.icon-up')
    down.style.display='none'
    up.style.display='var(--fa-display,inline-block)'
}

function run(){
    // order_li.onclick=showChild(order_li)
    for (let i of list_icon_up){
        i.onclick=function (){

            let parent=i.parentElement.parentElement.parentElement
            console.log(parent)
            let list=parent.querySelectorAll('li')
            for (let j of list){
                j.style.display='none'
            }
            let down=parent.querySelector('.icon-down')
            let up=parent.querySelector('.icon-up')
            up.style.display='none'
            down.style.display='var(--fa-display,inline-block)'
            console.log(1)
        }
    }
}

run()