function addView() {
    var viewsCount = document.getElementById("viewsCount");
    var currentCount = parseInt(viewsCount.innerText);
    var newCount = currentCount + 1;
    viewsCount.innerText = newCount + " views";
}
