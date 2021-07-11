// const { readFile, readFileSync } = require('fs');
// const xml2js = require('xml2js');
// var parser = new xml2js.Parser({ explicitArray: false })

// var jsonData;

// const toXml = () => {
//     const xml = readFileSync('./newData.xml', 'utf8');
//     parser.parseString(xml, function(err, result) {
//         jsonData = [...result.dataset.record];
//     });
//     // jsonData.map(item => {})
// }
// console.time('check')
// toXml()
// console.timeEnd('check')

// console.log(jsonData)



//================================================================= 
//================================================================= 
//================================================================= 

const { readFile, readFileSync } = require('fs');
const xml2js = require('xml2js');
var parser = new xml2js.Parser({ explicitArray: false })

var jsonData;

const toXml = () => {
    const xml = readFileSync('./root2.xml', 'utf8');
    parser.parseString(xml, function(err, result) {
        console.log(result.root.user)
            // jsonData = [...result.dataset.record];
    });
}
console.time('check')
toXml()
console.timeEnd('check')

// console.log(jsonData)