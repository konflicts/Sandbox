// Playground - noun: a place where people can play

import UIKit

var tigerNames = ["Tigger", "Tigress"]

tigerNames.append("Jacob")
println(tigerNames)

tigerNames += ["John","Eliot"]
println(tigerNames)

//Replace

tigerNames[1] = "Spar"
println(tigerNames)


tigerNames[0...2] = ["Katie","James","George"]
println(tigerNames)


//insert in a specific index.

tigerNames.insert("Julie", atIndex: 1)
println(tigerNames)

//remove instances of an array

tigerNames.removeLast()
println(tigerNames)

tigerNames.removeAtIndex(1)
println(tigerNames)

tigerNames.removeAll(keepCapacity: false)
println(tigerNames)


