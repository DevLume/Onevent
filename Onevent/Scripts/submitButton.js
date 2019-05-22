var button = document.getElementById("MainContent_submitButton");
button.onclick = clicked;
function priceChange() {
    console.log("event happened");
    var price = document.getElementById("MainContent_ticketPriceInput");

    var priceNumber = parseFloat(price.value).toFixed(2);
    console.log(priceNumber);
    if (priceNumber > 0 && !isNaN(priceNumber)) {
        price.value = priceNumber.toString() + " €";
        console.log(price.value);
    }
    else if (price.value != "") {
        alert("Please enter a correct price");
    }
};
function clicked() {
    var category = document.getElementById("MainContent_categoryInput");

    var selectedCat = category.options[category.selectedIndex].value;

    var description = document.getElementById("MainContent_descriptionInput").value;

    var address = document.getElementById("MainContent_addressInput").value;

    var price = document.getElementById("MainContent_ticketPriceInput");

    var ticketNumber = document.getElementById("MainContent_TicketCountInput").value;

    var name = document.getElementById("MainContent_nameInput").value;

    var email = document.getElementById("MainContent_organizatorInput").value;
    price.onblur = "";
    price.value = parseFloat(price.value).toFixed(2);
    console.log(price.value + " " + name + " " + address + " " + parseInt(ticketNumber) + " " + email + " " + selectedCat + " " + description);
    if (name != "" && description != "" && address != "" && parseInt(ticketNumber) > 0 && email != "" && selectedCat != "Nepasirinkta kategorija" && price.value > 0) {
       console.log("passed cond"); 
       button.type = "submit";
       button.onclick = "Submit";
       button.click();
    }
    else alert("Some fields are empty");
    price.onblur = priceChange;
    price.value = parseFloat(price.value).toFixed(2).toString();
    button.type = "none";
    button.onclick = clicked;
};