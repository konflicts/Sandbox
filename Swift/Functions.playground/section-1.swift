// Playground - noun: a place where people can play

import UIKit

func printHelloWorld ()
{
    println("Hello World!")
    println("Hello Class")
}

func printNumberSupplied(number:Int)
{
    println("The number is \(number)")
    println("The number times 3 is \(number*3)")
    
    var numberTimesTwo = number * 2
    numberTimesTwo *= 2
}


func turnOffAppliance (applianceName: String, isOn: Bool)
{
    if isOn == true
    {
        println("Please turn off  the \(applianceName)")
    }
    else
    {
        println("I actually turned the \(applianceName) off already")
    }
}

// función que retorna entero.

func additionFunction (firstArgument: Int, secondArgument: Int) -> Int
{
    
    let sumOfArguments = firstArgument + secondArgument

       return sumOfArguments
}


var additionAnswerOfInteger  = additionFunction(2, 4)
let finalAnswer = additionFunction(additionAnswerOfInteger, 5)
println(finalAnswer)







func helloWorldString () -> String
{
    printHelloWorld()
    
    return "Hello World!!"
}


var helloWorld  = helloWorldString()

println(helloWorld)