// 682. Baseball Game
var operations = ["5","2","C","D","+"]

function calPoints(operations) {
    res=[]
    operations.forEach(char => {
        if (char === 'C') res.pop(-1)
        else if (char === 'D') res.push(res.at(-1) * 2)
        else if (char === '+') res.push(res.at(-1) + res.at(-2))
        else res.push(parseInt(char))
        console.log(res)    
    })
    return res.reduce((acc, num) => acc + num, 0)
};
console.log(calPoints(operations));

function calPoints(operations) {
    res=[]
    operations.forEach(char => {
        if (char === 'C') res.pop(-1)
        else if (char === 'D') res.push(res[res.length-1] * 2)
        else if (char === '+') res.push(res[res.length-1] + res[res.length-2])
        else res.push(parseInt(char))
        console.log(res)    
    })
    return res.reduce((acc, num) => acc + num, 0)
};
var operations = ["5","2","C","D","+"]
console.log(calPoints(operations));


function calPoints(operations) {
    res=[]
    operations.forEach(char => {
        if (char === 'C') {
            res.pop(-1)
        } 
        else if (char === 'D') {
            res.push(res[res.length-1] * 2 )
        }  
        else if (char === '+') {
            console.log(res[res.length-2])
            res.push(res[res.length-1] + res[res.length-2])
        } 
        else {
            res.push(parseInt(char))
        } 
        console.log(res)    
    })
    return res.reduce((acc, num) => acc + num, 0)
}
var operations = ["5","2","C","D","+"]
console.log(calPoints(operations))



//MISC
var a = [1,2,3];
var b = [4,5,6];

console.log(
    res.reduce((acc,num) => acc + num, 0),
    res.reduce((acc,num) => acc + num, 0),
    res.reduce((acc,num) => acc + num, 0),
    res.reduce((acc,num) => acc + num, 0)
)

//custom function for each pair of numbers
var operationz = [Math.sum, Math.multiply, Math.sum];
//apply the functions to get [5,10,9]
console.log(operationz)

// def cal_points(operations)
//     res=[]
//     operations.each do |char|
//         case
//         when char == "C"
//             res.pop
//         when char == "D"
//             res << (res[-1] * 2)
            
//         when char == "+"
//             res << res[-1] + res[-2]
            
//         else
//             res << char.to_i
//         end
//     end
//     res.sum
// end
// cal_points(operations)

// def cal_points(operations)
//     #p operations.pop
//     res=[]
//     operations.each do |char|
//         p char
//         if char == "C"
//             res.pop
//         elsif char == "D"
//             p res << (res[-1] * 2)
            
//         elsif char == "+"
//             p res << res[-1] + res[-2]
            
//         else
//             p res << char.to_i
//         end
//         p res
//     end
//     res.sum
// end
// cal_points(operations)

