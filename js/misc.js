const vehicles = ['mustang', 'civic', 'camry']

var [ford, honda, toyota] = vehicles
console.log(vehicles)

const vehiclesa = ['mustang', 'civic', 'accord']
var [ford,, toyota] = vehiclesa

console.log(toyota)

var arr =[1,2,3]
var arrb = [4,5,6]
var arrcomb = [...arr, ...arrb]
console.log(arrcomb)

var nums =[1,2,3,4,5]
var [one, two, ...rest] = nums
console.log(rest)

// ---

const myVehicle = {
  brand: 'Ford',
  model: 'Mustang',
  color: 'red'
}

const updateMyVehicle = {
  type: 'car',
  year: 2021, 
  color: 'yellow'
}

const myUpdatedVehicle = {...myVehicle, ...updateMyVehicle}
console.log(myUpdatedVehicle)


// module gay {
//   import { name } from './person.js'
//   console.log(name)
// }