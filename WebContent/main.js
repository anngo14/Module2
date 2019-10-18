var addButton = document.getElementById("addButton");
var parent = document.getElementById("featureForm");
var count = 1;

if(addButton != null && parent != null) {
    addButton.addEventListener("click", ()=> {
        document.getElementById("featureForm").style.display = "block";

        var divInput = document.createElement("div");
        var inputText = document.createElement("input");
        divInput.setAttribute("class", "featureItem");
        inputText.setAttribute("type", "text");
        inputText.setAttribute("name", "newfeature");
        inputText.setAttribute("placeholder", `New Feature ${count}`);

        divInput.append(inputText);
        parent.appendChild(divInput);
        count++;
    });
}

var addButton2 = document.getElementById("addButtonCategory");
var parent2 = document.getElementById("categoryForm");
var count2 = 1;

if(addButton2 != null && parent2 != null) {
    addButton2.addEventListener("click", ()=> {
        document.getElementById("categoryForm").style.display = "block";

        var divInput2 = document.createElement("div");
        var inputText2 = document.createElement("input");
        var minChannel = document.createElement("input");
        var maxInput = document.createElement("input");
        divInput2.setAttribute("class", "categoryItem");
        inputText2.setAttribute("type", "text");
        inputText2.setAttribute("class", "description");
        inputText2.setAttribute("name", "newcategory");
        inputText2.setAttribute("placeholder", `New Category ${count2}`);
        minChannel.setAttribute("type", "text");
        minChannel.setAttribute("class", "mininimum");
        minChannel.setAttribute("name", "minchannel");
        minChannel.setAttribute("placeholder","Min");
        maxInput.setAttribute("type", "text");
        maxInput.setAttribute("class", "maximum");
        maxInput.setAttribute("name", "maxchannel");
        maxInput.setAttribute("placeholder", "Max");
        
        divInput2.append(inputText2);
        inputText2.parentNode.insertBefore(minChannel, inputText2.nextSibling);
        minChannel.parentNode.insertBefore(maxInput, minChannel.nextSibling);
        parent2.appendChild(divInput2);
        count2++;
    });
}