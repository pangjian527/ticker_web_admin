function submit(){
    var liElements = document.getElementById('expect_panel').getElementsByTagName("li");

    var items = [];

    for(var i=0 ;i<liElements.length;i++){
        var liItem = liElements[i];
        if(liItem.className == "select"){
            var item = new Object();

            var name = liItem.getAttribute("value");

            var spanElements = liItem.getElementsByTagName("span");
            var numbers = [];
            for(var j=0 ;j<spanElements.length;j++){
                var spanItem = spanElements[j];
                var selectArr = spanItem.getAttribute("select");
                if(selectArr == "select"){
                    numbers.push(spanItem.getAttribute("value"));
                }
            }

            item.name =name ;
            item.numbers = numbers;

            items.push(item);
        }
    }
    document.getElementById("expect").value = JSON.stringify(items);
    document.forms[0].submit();
}

function selectObject (){

    var iElements = this.getElementsByTagName("i");
    if(iElements.length <=0){
        this.appendChild(document.createElement("i"));
        this.setAttribute("select","select");
    }else{
        this.removeChild(iElements[0]);
        this.setAttribute("select","");
    }
    var liElement = this.parentNode;

    var total = liElement.getElementsByTagName("i").length;
    if(total <= 0){
        liElement.className = "";
    }else{
        liElement.className = "select";
    }

}