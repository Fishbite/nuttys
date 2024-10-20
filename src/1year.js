// set the spin angle to zero
let spinDeg = 0;

const flipBoxInner = document.getElementById("flip-box-inner");
flipBoxInner.addEventListener("click", flipHandler, { once: false });

function flipHandler(e) {
  e.preventDefault();
  // console.log("event.target:", e.target);
  spin(e);
}

function spin(e) {
  // change direction of spin so that the rotate param's
  // don't accumulate massive numbers
  spinDeg > 0 ? (spinDeg -= 360) : (spinDeg += 360);

  e.target.style.transform = `rotateY(${spinDeg}deg) rotateZ(${
    spinDeg * 2
  }deg)`;
  // console.log("spin finished");
}
