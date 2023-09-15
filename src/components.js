export class MakeFooter {
  constructor(email, list, ip) {
    this.email = email;
    this.ip = ip;
    this.list = list;
  }
  render() {
    return `<p>${this.email}</p> <ul>${this.list}</ul><p>${this.ip}</p>`;
  }
}

const footerEmail = "kitchen4nutty@gmail.com";
const footerList = `<li><a href="#">test list</a></li><li><a href="#">test list</a></li><li><a href="#">test list</a></li>`;
const footerIp = `copyright: fishbite 2023`;

const footerContent = new MakeFooter(footerEmail, footerList, footerIp);

const footer = document.createElement("footer");
document.body.appendChild(footer);
footer.innerHTML = footerContent.render();
