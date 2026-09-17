const fs=require('fs');
const path='jamaican-pumpkin-soup.html';
const s=fs.readFileSync(path,'utf8');
const voids=new Set(['area','base','br','col','embed','hr','img','input','link','meta','param','source','track','wbr']);
const stack=[];
const tagRegex=/<\/?([a-zA-Z0-9\-:]+)([^>]*)>/g;
let match;
while((match=tagRegex.exec(s))){
  const raw=match[0];
  const tag=match[1].toLowerCase();
  const isClosing=raw.startsWith('</');
  const start=match.index;
  const line = s.slice(0,start).split(/\r?\n/).length;
  if(isClosing){
    if(stack.length===0 || stack[stack.length-1].tag!==tag){
      console.log(`${line}: unexpected closing tag "${tag}"; stackTop=${stack.length?stack[stack.length-1].tag:'<empty>'}`);
    } else {
      stack.pop();
    }
  } else {
    if(!voids.has(tag)) stack.push({tag,line});
  }
}
if(stack.length) console.log('Unclosed tags at EOF: '+stack.map(x=>x.tag+'@'+x.line).join(', ')); else console.log('No unclosed tags');
