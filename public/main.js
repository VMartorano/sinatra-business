// Modal
var open = document.getElementById('modal');
var exitButton = document.querySelector('.exit-button')

var timing = function(){
  open.setAttribute('style', 'display:block');
};

setTimeout(timing, 1500);

exitButton.addEventListener("click", function(){
 open.setAttribute('style', 'display:none');
 open.style.display = 'none'
});


document.setAttribute('style', 'display:block');

function checkModal() {
 var email = document.querySelector("#email").value;

 if (true) {
   alert("Benvenuti!");
 } else {
   alert("Error!")
 }
};
