// Playground - noun: a place where people can play

import UIKit


// Este es un modo de crear arrays
//var tigerNames:Array<String>

// Este sería un método más común.
// var tigerNames:[String]

//Otro modo

var tigerNames = ["Tigger","Tigress","Jacob", "Spar"]
var tigerAges = [3,2,4,5]


// Two cool properties of arrays
var emptyArray:[String] = [] // inicializando un array vacío

if emptyArray.isEmpty
{
    println("there are no elements in my array")
}
else
{
    println("there are elements in my array")
}

println(tigerNames.count)
println(emptyArray.count)

let firstNameFromArray = tigerNames[0]
let secondAgeInTigerAgesArray = tigerAges[1]


// Range and For in Loops

for var i = 0; i < tigerNames.count; i++
{
    let instanceFromArray = tigerNames[i]
    println(instanceFromArray)
    
}


for tigerName in tigerNames
{
    println(tigerName)
}


for x in 1...5
{
    println(x)
}


// For in Enumerated Loop

for (index, tigerName) in enumerate(tigerNames)
{
    println("index : \(index) , tigername: \(tigerName)")
}
