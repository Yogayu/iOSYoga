// Playground - noun: a place where people can play
// Collection: Strings and d...

import UIKit
var str = "Hello, playground"
// basic type
var i:Int = 3
var m = 3
let j:Double = 4.0
let h = 5.0
let 游薪渝 = "yxy"
var Hi:String = "Nice to meet you!"




/*
结尾没有分号，不过说实在的，为什么结尾一定要写分号，有什么意义呢？但一行多句就需要分号。那看起来，是把换行符作为分号的功能了。
变量(variables)：var，常量(constants)：let
打印:println() 格式输出如何实现？包含 println("\(var)")
*/

var IamaVarible = 2015   // 能否不赋值？不能，赋值的同时给定了类型
let IamaConstant = "Who are you?"

println("This year is \(IamaVarible)")
println(IamaConstant)

// Add type Annotation 注释出类型
var AshortString:String = "swift"
println("I am \(AshortString)")

// Use key word, `keyword` 关键字作为变量名
var `var` = 2
println("I am \(`var`) years old.")

/* multiple separate statements on a single line
 * 一行多句
 */
let smile = "😀"; println(smile)
/* Integers 整数
 * 8,16,32,64 bit forms
 */
let minValue = UInt8.min
let maxValue8 = UInt8.max
let maxValue16 = UInt16.max
let maxValue32 = UINT32_MAX
let maxValue64 = UINT64_MAX
// Int: the same size as your platform's native word size
// UInt: Unsigned integer type

/* Floating-Ponit numbers
 * Float:32 bit, Double:64 bit
 */

/* Type safe and type inference
 * 类型安全，你需要指明所使用的数据类型，不能随意进行赋值。
 * 类型推断，你不必显性的写出类型，可以由提供的初始值进行推断。
 */

/* Number Literals
 * 各种进制表示
 */

let decimalInteger = 17  // 10
let binaryInteger = 0b10001 // 2
let octalInteger = 0o21 //  16
let hexadecimalInteger = 0x11   // 8

// e:10, p:2

// 如何进行类型转换？
// 一般情况下用Int,只在特别需要时指定数字类型
// 数字类型转换
let threeThousand: UInt16 = 3_000
let three: Int8 = 2
let threeThousandAndThree = threeThousand + UInt16(three)
// 数字转字符串呢？

/* Type Aliases 类型别名
 */
typealias SmallInt = UInt8

/* Booleans 布尔类型
 * true or false
 * 在if判断条件中使用
 */
var toBeOrBotToBe = true
var toBeOrNotToBe:Bool = true

/* Tuple 元组
 */
let http404Error = (404,"Not Found")
let (code,message) = http404Error
println("The code is:\(code),the Message is \(message).")

/* Optional 可选型
 * 值可能不存在的情况使用可选型。
 * 在其他的语言中似乎没有这样的类型。
 */
var youMayHaveOptionals: Int? = 100 // 必须制定类型，可不赋初始值

if youMayHaveOptionals != nil{
    println("Your may hava \(youMayHaveOptionals) options ") //?
}else{
    println("you do not have options.")
}

// optional binding 怎么翻译？
if let yourOptions = youMayHaveOptionals?.toIntMax(){
    println("You have \(yourOptions) options.")
}else{
    println("Your options can't be converted to an interger.")
}
// Implictly Unwrapped Optionals 拆包 不太理解，为什么需要
// 确认一定有值的时候使用
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // 之后使用就不用每次去检查，是否为nil

let assumedString: String! = "An implicitly unwarpped optional string."
let implicitString: String = assumedString

// Assertion 断言
let age = 4
assert(age >= 0,"A person's age cannot be less than zero.")


// Basic Operators 基本操作
//+ - * / % && || ++ -- -= += =- =+ == != > < >= <=  ?:
// 两个对象的引用是否指向同一对象 ===


let sparklingHeart = "\u{1F496}"
//
for character in "Hello"{
    println(character)
}

// String
var toDoList = ["swim","swift","Write"]

var shoppingList:[String] = ["Eggs","Milk","Tea"]
if shoppingList.isEmpty{
    println("The shoppong list is empty.")
}
else{
    println("The shopping list is not empty")
}

shoppingList.append("Apple")
shoppingList += ["Baking Powder"]
println("The shopping list contains \(shoppingList.count) items.")

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList[2...4] = ["Bananas","Beas"]
shoppingList.insert("Map", atIndex: 2)
println(shoppingList)

let ThirdItem = shoppingList.removeAtIndex(2)
println(shoppingList)
for item in shoppingList{
    println(item)
}

for (index,value) in enumerate(shoppingList){
    println("Item\(index+1):\(value)")
}

// loop
for index in 1...5{
    println("index times 5 is \(index*5)")
}

var iWillGoHome = "sunday"
for character in iWillGoHome{
    println("\(character)")
}

var enoughFood:Int = 30
var buysomeFood:Int = 0
while  buysomeFood < enoughFood{
    println("We don't have enough food!")
    buysomeFood++
}
println("We have enough food now.")

do {
    println("We don't have enough food.")
 buysomeFood++
}while buysomeFood < enoughFood

//
// function
func HelloNice(s1:String)->String{
    return("Nice to meet you,\(s1)")
}

HelloNice("Mike")
HelloNice("Jone")

func sumOfMoney(D1:Double...)->Double{
    var total:Double = 0
    for index in D1{
    total += index
    }
    return total
}

sumOfMoney(3.6,8.9,34,5.3,9,2)
sumOfMoney(4.2,14,5.9,0.5,3.6,31)

// 输入输出变量，也就是引用
func swapTwoInts(inout a:Int,inout b:Int){
    var temporaryA:Int = a
    a = b
    b = temporaryA
}

var someInt = 89
var anotherInt = 90
swapTwoInts(&someInt, &anotherInt)
println("somtInt is now \(someInt) and anotherInt is now \(anotherInt)")



// 函数类型作为返回类型
func stepForward(input:Int)->Int{
    return input + 1
}
func stepBackward(input:Int)->Int{
    return input - 1
}
// 在->之后，写一个完整的放回类型
func chooseStepFunction(backwards:Bool)->(Int)->Int{
    return backwards ? stepBackward : stepForward
}

var currentValue = 9
let movenearerToZero = chooseStepFunction(currentValue > 0)
println("Countiong to Zero:")
while currentValue != 0{
     println("\(currentValue)...")
     currentValue = movenearerToZero(currentValue)
}


// class 没有private public protected 吗


/*
 * Optional 为什么要有可选型，在其他语言中并没有
 */
var dayBabyIsBorn:Int?
// 有值就可以unwrapped
// let dd = dayBabyIsBorn! 会提示错误，因为没有值
// 检查判断，再使用
if let dy = dayBabyIsBorn {
    println("Birthday is \(dy)th of the month.")
}

var erroeCode :Int?
// 如果不是nil就拆包，如果是就赋值为-1
let error : Int = erroeCode ?? -1

var dbVal : Double?

// Optional Chaining
// dbVal = NSNumberFormatter().numberFormatString(strCandidate2)?.doubleValue
// 隐式解析可选类型（implicitly unwrapped optionals）when?一开始没有赋值，在引用之前一定会有值，不用!
// case:Outlets
var petWeight : Double! = 90
println("\(petWeight)")

// 字典返回值都是optional

// Class iTunes
class Person {
    var age : Int = 0
    let name : String
    var address : String?
    
    init(personName:String){
        self.name = personName
    }
}
let me : Person = Person(personName: "Azure")
me.address = "China"

class Employee: Person {
    let id : Int
    
    init(personName:String, ident: Int){
        self.id = ident
        super.init(personName: personName)
    }
}


// 2015-8-10
// 类声明
class TV {
    var name = "TV 1.0"
    var keyCount = "12"
    var KeyName = "Power"
    func openTV()->String{
        return "Success"
    }
}
// 什么是类？什么是面向对象编程。

// 实例化
var myTV = TV()
print(myTV.KeyName)
print(myTV.openTV())

// 引用类型判断
var miTV = myTV
myTV.KeyName = "Yogayu"
print(miTV.KeyName)

// === 判断是否引用同一实例
print(miTV === myTV)


// swift中是否有？ 没有这样的概念，但是引用类型就是指向的引用地址
print(miTV.name)

// 构造与析构
class CreatTV{
    var name = "Yoga TV"
    // 构造函数
    init(name:String){
        self.name = name
    }
    // 析构函数
    deinit{
        name = ""
    }
    func getMyTvKeys()->Int{
        return 12
    }
}
var CreatMyTV = CreatTV(name: "Yogayu's TV")
print(CreatMyTV.name)

// 类继承
class MITV:CreatTV{
    //
    override init(name:String){
        super.init(name: name) // ? 重构需要调用，或者，override
        super.name = "Hello" // 使用父类的属性，super
    }
    // 重写 name
    override var name:String{
        get{
            return self.name
        }
        set{
            if(self.name == "Yogayu"){
                super.name = "Hello! Yogayu."
            }else{
                super.name = "Hello!"
            }
        }
    }
    

    override func getMyTvKeys() -> Int {
        return 24
    }
}
// 继承了属性和方法
var myMiTV = MITV(name: "MyMiTV")
print(myMiTV.getMyTvKeys())
print(myMiTV.name)




























