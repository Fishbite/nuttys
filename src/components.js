export class MakeFooter {
  constructor(email, list, ip) {
    this.email = email;
    this.ip = ip;
    this.list = list;
  }
  // createFooter() {
  //   const footer = document.createElement("footer");

  //   return document.body.appendChild(this.footer);
  // }
  render() {
    return `<p>${this.email}</p> <ul>${this.list}</ul><p>${this.ip}</p>`;
  }
}

// function createFooter() {
//   const footer = document.createElement("footer");
//   document.body.appendChild(footer);
//   return footer;
// }

/*
const footerEmail = "kitchen4nutty@gmail.com";
const footerList = `<li><a href="#">test list</a></li><li><a href="#">test list</a></li><li><a href="#">test list</a></li>`;
const footerIp = `copyright: fishbite 2023`;

const footerContent = new MakeFooter(footerEmail, footerList, footerIp);

const footer = document.createElement("footer");
document.body.appendChild(footer);
footer.innerHTML = footerContent.render();
*/

/* =======================
    Navigation Menu START
   =======================
*/
export function navMenu(navContent) {
  // get the element to put the navigation menu into
  const wrapper = document.getElementById("nav-container");

  // var to hold the `<li></li>` elements
  let navList = ``;

  // var used to copy each `<li>` element to `navList`
  let tmp;

  // loop through the object holding `HTML` file names & maenu titles
  for (let prop in navContent) {
    tmp = navList.concat(
      `<li> <a href="./${prop}.html">${navContent[prop]}</a> </li>`
    );

    // copy tmp to `navList`
    navList = tmp;
  }

  // object to write the `navList` to
  const menu = {
    nav: `<nav class="nav">
  <div class="nav-overlay">
    <span class="nav-title"><b>{:¬)</b></span>
    <ul class="nav-list nav-btn">

    ${navList}
    
    </ul>
  </div>
  </nav>`,
  };

  // write the navigation menu to the navigation menu wrapper element
  wrapper.innerHTML = menu.nav;

  return wrapper;
}

/* =======================
    Navigation Menu END
   =======================
*/
