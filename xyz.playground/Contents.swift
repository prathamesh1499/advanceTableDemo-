import UIKit
/*
var str = "Hello, playground"

var str1="HI THERE"

str + " " + str1

str1

print(str1 , terminator:"\n")

str.append(" " + "p")
str.customMirror
str.count
//to append the string,to count

//Number
var num1 = 12
var num2 = 14.5

var num3=Double(num1) + Double(num2)
print(num3 , terminator:" ")

var a = 12
var b = 15
// swap two nos without 3rd variable
print("\nBefore swap a=\(a) and b=\(b).")
swap(&a, &b)
print("After swap  a=\(a) and b=\(b).")

// otherlogicFOR SWAP
// a=a*b
// b=a/b
// a=a/b

//conditonal statements
var p=5
if(p%2==0)
{
    print("\neven no=\(p)")
}
else{
    print("\nodd no=\(p)")
}

//switch
let x=2

switch x {
case 1:print("its case one")
case 2:print("its case two")
default:
    print("its defualt case")
    
}

//to make a simple calc

var numa=10
var numb=4
var result=0
var op : Character="*"
switch op {
case "+":
    result=numa+numb
    print("result =\(result)")
case "-":
    result=numa-numb
    print("result =\(result)")
case "*":
    result=numa*numb
    print("result=\(result)")
case "/":
    result=numa/numb
    print("result=\(result)")
default:
    print("no such case")
}

//Array

var staticArr = [String]()
staticArr = ["apple" , "android", "Windows" , "apple" , "android", "Windows" ]

staticArr.append("cr7")
staticArr.insert("Atharva", at:2)
print(staticArr)

//for loop used to print the array

for name in staticArr
{
    print(name)
}

print(staticArr.count)
print(staticArr.capacity)

//Dictionary
var studDict=[Int:String]()
studDict=[1:"alex", 2:"Bob" , 3:"jishant", 4:"prathamesh"]
studDict.updateValue("armaan", forKey: 5)
studDict.removeValue(forKey: 5)
print(studDict)

//loop
for i in studDict{
    print(i)
}

for i in studDict{
    print(i.value)
    print(i.key)
}


//methods or functions
func abc(){
    print("swift functions")
}

abc()

func name(firstName:String,lastName:String)
{
   print("my fullname=\(firstName)\(lastName)")
}
name(firstName:" Prathamesh", lastName:" Joshi")

//using return operator
func add(num1:Int,num2:Int)->Int{
    return num1+num2
}
print(add(num1:20,num2:30))

//create a calc func
func calc(num1:Int,num2:Int)->Int{
    var ans=0
    let op : Character="*"
    switch op {
    case "+":
      ans=numa+numb
    
    case "-":
      ans=numa-numb
   
    case "*":
        ans=numa*numb
       
    case "/":
        ans=numa/numb
      
    default:
        print("no such case")
    }
return(ans)
}
print(calc(num1: 10, num2: 4))

//binary operations

let e = 12
let f = 15
a | b  // or
a & b  // and
a ^ b  // xor

a >> 2 //right shifting
b << 3 //left shifting

print("decimal =",String(e, radix:2))
print("octal = ",String(e, radix:8))
print("hexa =",String(e, radix:16))
print("decimal ",String(e, radix:10))

print("decimal =",String(f, radix:2))
print("octal = ",String(f, radix:8))
print("hexa =",String(f, radix:16))
print("decimal ",String(f, radix:10))

*/

/*
//   OOPs

class Abc{
    var a = 0
    
    func printA(a:Int) {
        print(a)
    }

}
var obj = Abc()
obj.printA(a:14)

class Xyz:Abc
{
   var b = 0
    override func printA(a:Int) {
        super.printA(a: a)
        print("function overri")
    }
}
var obj1 = Xyz()
obj1.printA(a:90)

//create animal class with properties like number of legs ,has fur or not etc ,then create individual animal clsss like dog,cow,snake and iherit animal

class Animal{
    var legs=0
    var tail=0
    func leg(legs:Int){
        
      print("no of legs=\(legs)")
    }
    func tail(x:Int){
     print("no of tail=\(tail)")
    }
}

class Dog:Animal{
    var leg1=4
    override func leg(legs: Int) {
        super.leg(legs:4)
        print("dog class")

    }
    override func tail(x: Int) {
        super.tail(x: 1)
        print("dog class")
    }

    
}
class Snake:Animal{
    override func tail(x: Int) {
       print("Snake class")
        print("no legs , no tail")
    }

}
var obj2 = Dog()
obj2.leg(legs:4)
obj2.tail(x: 1)
var obj3 = Snake()
obj3.tail(x: 0)

//lets do fun
var dog = "🐶"
let 🐱 = "Cat"


//emotions  // we can use switch case bt u only remeber if conditon always:P:P:P:P:P:P:P:P:P:P:P
var emo_dict=[String:String]()
emo_dict=["happy":"😄" ,"sad":"☹️","laughing":"🤣"]
func emo(emotions:String){
    for i in emo_dict
    {
        if(emotions == i.key)
        {
            print(i.value)
        }
    }
    
}

emo(emotions: "happy")
emo(emotions: "sad")
emo(emotions: "laughing")

*/


