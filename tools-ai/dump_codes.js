const fs=require('fs');
const s=fs.readFileSync('jamaican-pumpkin-soup.html','utf8');
const start=252, end=263;
const lines=s.split(/\r?\n/);
for(let i=start;i<=end;i++){
  const line=lines[i-1] || '';
  const codes = Array.from(line).map(ch=>ch.codePointAt(0));
  console.log(`${i}: ${line}`);
  console.log('Codes: '+codes.join(' '));
  console.log('');
}
