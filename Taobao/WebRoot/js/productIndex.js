var mainBox = document.querySelector(".main-box");
var itemImgList = document.querySelectorAll(".img-list ul li");
var mask = document.querySelector(".mask");
var cloneBig = document.querySelector(".cloneBig");
var bili = 0;

mainBox.style.backgroundImage = "url("+itemImgList[0].dataset.src+")";
mainBox.style.backgroundSize = 'cover';

for(var i = 0; i < itemImgList.length; i++){
    itemImgList[i].onmouseenter = function(){
        if(this.className == "active"){
            return;
        }

        var act = document.querySelector(".img-list ul .active");
        act.classList.remove("active");

        this.classList.add("active");

        mainBox.style.backgroundImage = "url("+this.dataset.src+")";
        mainBox.style.backgroundSize = 'cover';
    }
}

mainBox.onmouseover = function(e){
    mask.style.display = "block";
    cloneBig.style.display = "block";

    bili = mainBox.offsetWidth / mask.offsetWidth;

    console.log(bili);

    var actImg = document.querySelector(".img-list .active");

    cloneBig.style.backgroundImage = "url("+actImg.dataset.clone+")"
    cloneBig.style.backgroundSize = bili * this.offsetWidth + "px " + bili * this.offsetHeight + "px";

   
}

mainBox.onmouseleave = function(){
    mask.style.display = "none";
    cloneBig.style.display = "none";
}

mainBox.onmousemove = function(e){

    var disLeft = e.offsetX - mask.offsetWidth / 2;
    var disTop = e.offsetY - mask.offsetHeight / 2;

    if(disLeft <= 0){
        disLeft = 0;
    }else if(disLeft >= this.offsetWidth - mask.offsetWidth){
        disLeft = this.offsetWidth - mask.offsetWidth;
    }

    if(disTop <= 0){
        disTop = 0;
    }else if(disTop >= this.offsetHeight - mask.offsetHeight){
        disTop = this.offsetHeight - mask.offsetHeight;
    }

    mask.style.left = disLeft + "px";
    mask.style.top = disTop + "px";

    
    cloneBig.style.backgroundPosition = -disLeft*bili + "px " + -disTop*bili + "px"; 
}