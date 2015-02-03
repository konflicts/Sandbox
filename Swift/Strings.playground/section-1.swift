// Playground - noun: a place where people can play

import UIKit

var string1 = ""
string1 = "Hello"
let string2 = "World"
var helloWordString = string1 + " " + string2
helloWordString = helloWordString.uppercaseString
helloWordString = helloWordString.lowercaseString

var fisrtCharacter = "!"

helloWordString = helloWordString + fisrtCharacter

var x = 5

var newString = "\(x)" + helloWordString

var floatValue = 3.5

var newfloatString = "\(floatValue)"


var numberString = "9"

var numberStringToInt = numberString.toInt()


// el signo de exclamación hace que deje un ser un "Optional" y se define como entero por completo


var optionalToInt = numberStringToInt!
optionalToInt = optionalToInt + 3


// string to double

var doubleStrin = "3.9585"
var doubleValueFromString = Double((doubleStrin as NSString).doubleValue)
doubleValueFromString = doubleValueFromString + 3.85


//short hand

doubleValueFromString += 3.85

//Contants: using "let" instead of "var"


