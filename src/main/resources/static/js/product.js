function submit(){

    var obj = document.getElementById("tickerType");
    var index = obj.selectedIndex;
    var type = obj.options[index].value;

    var objExpect = new Object();
    objExpect.type = type;

    if(type ==0){
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
        objExpect.items = items ;
    }else if (type ==1){
        var sizeType = $('input[name="sizeType"]:checked').val();
        objExpect.sizeType = sizeType;
    }else if (type == 2){
        var colorType = [];
        $('input[name="colorType"]:checked').each(function(){
           colorType.push($(this).val());
        });
        objExpect.colorType = colorType;
    }else if (type == 3){
        var zodiacType = [];
        $('input[name="zodiacType"]:checked').each(function(){
           zodiacType.push($(this).val());
        });
        objExpect.zodiacType = zodiacType;
    }

    document.getElementById("expect").value = JSON.stringify(objExpect);
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