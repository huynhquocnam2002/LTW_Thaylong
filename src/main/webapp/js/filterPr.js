
    function checkKind(id) {
    if(id == "all"){
        document.getElementById("category__container__hot").style.display ="none";
        document.getElementById("category__container__new").style.display ="none";
        document.getElementById("category__container__salerun").style.display ="none";

        document.getElementById("category__container__all").style.display ="block";}
    if(id != "all"){
    document.getElementById("category__container__all").style.display ="none";
    document.getElementById("category__container__hot").style.display ="none";
    document.getElementById("category__container__new").style.display ="none";
    document.getElementById("category__container__salerun").style.display ="none";

    document.getElementById("category__container__"+id).style.display ="block";
}
}
