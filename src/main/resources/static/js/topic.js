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
                numbers.push(spanItem.getAttribute("value"));
            }

            item.name =name ;
            item.numbers = numbers;

            items.push(item);
        }
    }
    var data = CKEDITOR.instances.editor1.getData();
    document.getElementById("editor1").value = data;

    if(data == ""){
        alert("回复内容不能为空");
        return ;
    }

    document.getElementById("expect").value = JSON.stringify(items);
    document.forms[0].submit();
}

function selectObject (){
    var clsName = this.className;

    if(clsName == "select"){
        this.className = "";
    }else{
        this.className = "select";
    }

}