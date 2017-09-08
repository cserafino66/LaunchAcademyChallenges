// test the isPangram() function, and print results to the console.
let sentences = [
  { content: 'The quick brown fox jumps over the lazy dog.', pangram: true },
  { content: 'The quick onyx goblin jumps over the lazy dwarf.', pangram: true },
  { content: 'Grumpy wizards make toxic brew for the evil queen and jack.', pangram: true },
  { content: 'Not a pangram', pangram: false },
  { content: '', pangram: false },
];

let isPangram = (sentence) => {
  let i = 0;
  let letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l',
   'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '.'];
   letters.forEach((letter) => {
     sentence = sentence.toLowerCase();
     if (sentence.includes(letter) === true) {
       i = i + 1;
     }
   });
  if (i == 27) {
    return true;
     }
 };


sentences.forEach((sentence) => {
  let result = isPangram(sentence.content);
  let correct = (result == sentence.pangram);
  console.log(`isPangram gave a ${correct ? '' : 'in'}correct result for: ${sentence.content}`);
});
