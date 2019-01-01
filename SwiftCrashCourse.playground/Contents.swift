import UIKit

//Test Playground
var str = "Hello, playground"

//Single Line Comment

/*
 ============ MultiLine Comment1*============
 ============ MultiLine Comment2*============
*/


// Semicolon is not required for single line.
print("Swift Rules")
print("Swift Data Types")

//But must use if multiple sentences have been used in single line.
print("Swift Rules");print("Swift Data Types")

//Identifiers (case sensitive) - variable, function, or any other userdefined item.
// -> Starts with [A-Z a-z _]
// -> Not allowed [@ $ %]
// -> To use reserved keyword use backtick (`) before and after it

var `class` = "bharat"
print("The class name is \(`class`)")



// ============ Reserved keyword Swift ============ //

/* Keywords used in declaration
Class       deinit      Enum        extension
Func        import      Init        internal
Let         operator    private     protocol
public      static      struct      subscript
typealias   var
*/

/* Keywords used in statements
 break      case    continue        default
 do         else    fallthrough     for
 if         in      return          switch
 where      while
 */

/* Keywords used in expressions and types
 as         dynamicType     false       is
 nil        self            Self        super
 true       _COLUMN_        _FILE_      _FUNCTION_
 _LINE_
 */

/* Keywords used in particular contexts
 associativity      convenience     dynamic     didSet
 final              get             infix       inout
 lazy               left            mutating    none
 nonmutating        optional        override    postfix
 precedence         prefix          Protocol    required
 right              set             Type        unowned
 weak               willSet
 */

//White space should be used in consistent manner. More than one space is ignored.
var mathsMarks = 60
var ScienceMarks = 70

//Valid ways
//var totalMarks=mathsMarks+ScienceMarks
//var totalMarks = mathsMarks + ScienceMarks

//Invalid ways
//var totalMarks =mathsMarks+ScienceMarks
//var totalMarks = mathsMarks+ ScienceMarks



// ============ Different Dataytpes in Swift ============ //

//1. Int [Relatives - UInt, Int8, Int16, Int32, Int64, UInt8, UInt16, UInt32 ,UInt64]
//->Int is Int64 for 64 architecture system. On the same way, it is Int32 for 32 architecture.

//2. Float          -   32 bits

//3. Double         -   64 bits

//4. Bool           -   8 bits

//5. String         -   8 bits(Collection of the character)

//6. Character      -   8 bits

//7. Optional       -   Either  have a value or no value.

//8. Tuples         -   Group multiple values.

//Create simple variable.
var firstName = "Xyz"
firstName = "Abc"

//Create Constant.
let requiredSubject = "Maths"
//requiredSubject = "Science" //Not allowed

print("My first name is \(firstName) and have taken \(requiredSubject) as primary subject")

var LastName = "Efg"
// LastName = 12 //Not Allowed

//Create variable/constant with explicit type
var timeTicks: Float = 1234.12

//Type Aliases - Create new name of an existing type.
typealias Marks = Int
var scienceMarks: Marks = 96

// Can use your native language
typealias नाम = String
var प्रथम_नाम: नाम = "भारत"
print("मेरा नाम \(प्रथम_नाम) हे.")

//Optional types in Swift - Has value or nil.

// ->Example 1 - Forced Unwrapping
var fName: String?
//fName = "Bharat"

if(fName == nil)
{
    print("fName has no value")
}
else
{
    print("fName is \(fName)")
    //print("fName is \(fName!)")
}

// ->Example 2 - Optional binding
var hobby: String?
//hobby = "singing"

if let anyHobby = hobby
{
    print("My hobby is \(anyHobby)")
}
else
{
    print("No hobby")
}


//Tuples - Group multiple values
//-> Useful when returns multiple value from the functions.
var studentDetails = (101, "Bharat")
print("Student name is \(studentDetails.1) and his roll no is \(studentDetails.0).")



// ============ Operators ============ //

//1. Arithmetic Operators => [+ - * / %]
//2. Comparison Operators => [== != > < >= <=]
//3. Logical Operators    => [&& || !]
//4. Bitwise Operators    => [& | ^]
//5. Bitwise Operators    => [& | ^ ~ << >>]
//6. Assignment Operators => [= += -= *= /= %= <<= >>= &= ^= |=]
//7. Range Operators      => [(1...5) (1..<5) 1...]
//8. Misc Operators       => [Unary Minus, Plus & Ternary Conditional]

for itr in 1..<5//1...5
{
    print(itr)
}



// ============ Conditions ============ //

//1. If..Else..Else if..nested if
//2. Switch..case..
//3. Ternary Conditional

var totalMarks = 60 // 34 //45
//[1] If..Else..Else if
if(totalMarks >= 60)
{
    print("First Class")
}
else if(totalMarks >= 35)
{
    print("Pass Class")
}
else
{
    print("Fail")
}

//[2] Switch..case..
switch totalMarks
{
    case 60...100:
    print("First Class")
    //fallthrough;
    case 35..<60:
    print("Pass Class")
    
    default:
    print("Fail")
}

//[3] Ternary Conditional
print(totalMarks >= 35 ? "Pass" : "Fail")

//guard keyword -

func GetResult(totalMark : Int)
{
    guard totalMark >= 0 else {
        print("Invalid Marks")
        return;
    }
    
    print(totalMark >= 35 ? "Pass" : "Fail")
}

GetResult(totalMark: -1);



// ============ Loops ============ //

// Loop Control Statements => continue, break, fallthrough
//1. for-in
for index in 1...6
{
    print("Index = \(index)")
}

//2. while
var whileIndex = 20
while(whileIndex < 40)
{
    print("whileIndex = \(whileIndex)")
    whileIndex += 1
}

//3. repeat...while
whileIndex = 21 //10
repeat
{
    print( "Value of index is \(whileIndex)")
    whileIndex = whileIndex + 1
} while whileIndex < 20



// ============ String operations ============ //

//1. Create String
var hiStr = "Hi "
var welcomeStr = String("Welcome to crash course")
print(welcomeStr)

//2. String Concatenation
hiStr += welcomeStr
print(hiStr)

let mixIntStr = "\(hiStr) has total \(hiStr.count) characters."
print(mixIntStr)

//3. Check if two strings are same.
let firstStudentName = "Bharat"
let otherStudentName = "Bharat" //"bharat"

if(firstStudentName == otherStudentName)
{
    print("firstStudentName and otherStudentName have same value")
}
else
{
    print("Different values")
}

//4. Different functions
var emptyStr = ""
if(emptyStr.isEmpty)
{
    print("emptyStr is empty.")
}

var prefixSuffixCheck = "MathsScienceCraft" // "Maths1ScienceCraft1" // "1MathsScienceCraft"
if(prefixSuffixCheck.hasPrefix("Maths"))
{
    print("String has Maths prefix.")
}
if(prefixSuffixCheck.hasSuffix("Craft"))
{
    print("String has Craft suffix.")
}

for utfCode in prefixSuffixCheck.utf8 //prefixSuffixCheck.utf16
{
    print(utfCode)
}

var marksStr = "62Marks"
marksStr.insert(" ", at: marksStr.index(marksStr.startIndex, offsetBy: 2))
print(marksStr)

marksStr.remove(at: marksStr.index(marksStr.endIndex, offsetBy: -1))
print(marksStr)
print(String(marksStr.reversed()))

// Here ch is Character type variable.
for ch in marksStr {
    print(ch)
}



// ============ Basic collections ============ //

//1. Array

var fruitsArray = [String]()
fruitsArray.append("Apple")
fruitsArray.append("Banana")
fruitsArray += ["Cherry", "Grapes", "Mangoes"]

for fruit in fruitsArray
{
    print(fruit)
}

var studentMarksArray = [Int](repeating: 0, count: 10)
studentMarksArray[0] = 55
studentMarksArray[5] = 95
studentMarksArray[9] = 85
for studentMark in studentMarksArray
{
    print(studentMark)
}

var vegetableArray:[String] = ["Lettuce", "Tomato", "onion", "potato"]
for vegetable in vegetableArray
{
    print(vegetable)
}

vegetableArray[1] = "Broccoli"
print("========================")
for vegetable in vegetableArray
{
    print(vegetable)
}

print("========================")

var otherEatablesArray = [String]()

if(otherEatablesArray.isEmpty)
{
    print("otherEatablesArray is empty.")
    otherEatablesArray.append("Curd")
}

var vegetablesFruitsOthersArray = vegetableArray + fruitsArray + otherEatablesArray

print("vegetablesFruitsOthersArray has \(vegetablesFruitsOthersArray.count) values.")

for (arrIndex, arrVals) in vegetablesFruitsOthersArray.enumerated()
{
    print("\(arrIndex) => \(arrVals)")
}


//2. Sets

var developmentLanguageSet = Set<String>()
developmentLanguageSet.insert("Swift")
developmentLanguageSet.insert("Objective C")
developmentLanguageSet.insert("C#")
developmentLanguageSet.insert("Assembly")

for developmentLanguage in developmentLanguageSet {
    print(developmentLanguage)
}

developmentLanguageSet.remove("Assembly")

for developmentLanguage in developmentLanguageSet.sorted() {
    print(developmentLanguage)
}

print("========================")

// All set operations can be done such as union, subtracting, intersection. Can check isSubset or isSuperset
let proceduralSet:Set = ["Fortran", "ALGOL", "COBOL", "BASIC", "Pascal", "C"]
let oopsSet:Set = ["C", "C++", "C#", "Java"]
let allDevLanguageSet = proceduralSet.union(oopsSet)

for devLanguage in allDevLanguageSet.sorted() {
    print(devLanguage)
}


//3. Dictionary [Key(String, Int) - Value]

var testDict = [Int : String]()
testDict[1407] = "Bharat"
testDict[1503] = "Biya"
testDict[1] = "Albert"
testDict[2] = "Marshal"
//var testDict : [Int : String] = [1407 : "Bharat", 1503 : "Biya", 1 : "Albert", 2 : "Marshal"]
//var keyArray:[Int] = [1407, 1503, 1, 2]
//var valueArray:[String] = ["Bharat", "Biya", "Albert", "Marshal"]
//var testDict = Dictionary(uniqueKeysWithValues: zip(keyArray, valueArray))

for valueDict in testDict.enumerated()
{
    print("Key = \(valueDict.element.key) Value = \(valueDict.element.value)")
}

print("========================")

let lessCharDict = testDict.filter { $0.value.count < 5}
for valueDict in lessCharDict.enumerated()
{
    print("Key = \(valueDict.element.key) Value = \(valueDict.element.value)")
}

print("========================")

for valueDict in testDict.enumerated()
{
    print("Key = \(valueDict.element.key) Value = \(valueDict.element.value)")
}

print("========================")

var nameArray = ["Bharat", "Biya", "Albert", "Marshal"]
var lessIdGroupDict = Dictionary(grouping: nameArray) { $0.first! }

for valueDict in lessIdGroupDict.enumerated()
{
    print("Key = \(valueDict.element.key) Value = \(valueDict.element.value)")
}

print("========================")

var oldValue = testDict.updateValue("Albert Einstein", forKey: 1)
print("\(oldValue!) is replaced by \(testDict[1]!)")

var removedValue = testDict.removeValue(forKey: 1)
print("\(removedValue!) is removed from dictionary.")



// ============ Function ============ //

//func functionName(parameters) -> ReturnType
//{
//    Body
//}

func sum(no1 : Int, no2 : Int) -> Int
{
    return no1 + no2
}

print(sum(no1 : 1, no2 : 2))
print(sum(no1 : 12, no2 : 18))

func getMinMaxValue(allValuesArray no1 : [Int]) -> (minValue : Int, maxValue : Int)?
{
    if (no1.isEmpty)
    {
       return nil;
    }
    
    var min = no1[0]
    var max = no1[0]
    
    for valLocal in no1
    {
        if(valLocal < min)
        {
            min = valLocal
        }
        else if(valLocal > max)
        {
            max = valLocal
        }
    }
    
    return (min, max)
}

var minMaxValue = getMinMaxValue(allValuesArray: [2, 40, -10, -50, 60, 1, 6, 40])

if let minMaxValueConst = minMaxValue
{
    print("MinValue = \(minMaxValueConst.minValue) MaxValue = \(minMaxValueConst.maxValue)")
}

func printValues<N>(valueParam : N...)
{
    for valueLocal in valueParam
    {
        print(valueLocal)
    }
}

printValues(valueParam : 1, 2, 3)

func swapValues(no1 : inout Int, no2: inout Int)
{
    let temp = no1;
    no1 = no2
    no2 = temp
}

var num1 = 10
var num2 = 20

swapValues(no1: &num1, no2: &num2)
print("num1 = \(num1) num2 = \(num2)")


func addition (no1 : Int, no2 : Int) -> Int
{
    return no1 + no2
}

func subtraction (no1 : Int, no2 : Int) -> Int
{
    return no1 - no2
}

func multiplication (no1 : Int, no2 : Int) -> Int
{
    return no1 * no2
}

func division (no1 : Int, no2 : Int) -> Int
{
    return no1 / no2
}

func calculation (function : (Int, Int) -> Int, no1 : Int, no2 : Int)
{
    print(function(no1, no2))
}

calculation(function: multiplication, no1: 10, no2: 20)



// ============ Closures ============ //

// Basic Syntax
//{
//    (parameters) −> return type in
//    statements
//}

let additionClosure =
{
    (value1 : Int, value2 : Int) -> Int in
    return value1 + value2
}

print("9 + 5 = \(additionClosure(9,5))")

var agrumentClosure : (Int, Int, Int) -> Int = { (x,y,z) in z }
print(agrumentClosure(4, 5, 6))

let numbers = [52, -25, -35, 32, 8, 25]

let ascendingNumbers = numbers.sorted(by: <)
print(ascendingNumbers)



// ============ Enumerations ============ //

//1. Raw value
//2. Associated Values

//1. Raw value
enum Countries
{
    case Australia
    case Brazil
    case China
    case Denmark
}

var country = Countries.Australia
print("Country = \(country)")

switch country
{
    case Countries.Australia:
        print("+61")
    case Countries.Brazil:
        print("+55")
    case Countries.China:
        print("+86")
    case Countries.Denmark:
        print("+45")
}

//2. Associated Values
enum Employee
{
    case Name(String)
    case Address(String, Int)
    case PhoneNumber(String)
}

var empName = Employee.Name("Bharat")
var empAddress = Employee.Address("8/40 Alexandra Street", 3183)
var phoneNumber = Employee.PhoneNumber("0433014700")

switch empName //empAddress //phoneNumber
{
    case Employee.Name(let Name):
        print("EmployeeName = \(Name)")
    case Employee.Address(let address, let pincode):
        print("Address = \(address) Pincode = \(pincode)")
    case Employee.PhoneNumber(let phoneNumber):
        print("EmployeeName = \(phoneNumber)")
}



// ============ Structure ============ //

//struct nameOfStructure
//{
//    Definition 1
//    Definition 2
//    ---
//    Definition N
//}
struct EmployeeStruct
{
    var empId: Int
    var empName: String
    var empSalary: Int
    
    init(empId: Int, empName: String, empSalary: Int)
    {
        self.empId = empId
        self.empName = empName
        self.empSalary = empSalary
    }
    
    mutating func doSalaryIncrement(increment : Int)
    {
        empSalary += increment
        print("\(empName) gets the increment and new salary will be \(empSalary)")
    }
}

var oneEmp = EmployeeStruct(empId: 101, empName: "Albert", empSalary: 45000)
print("EmpId - \(oneEmp.empId) EmpName - \(oneEmp.empName) EmpSalary - \(oneEmp.empSalary)")
var copyOneEmp = oneEmp
copyOneEmp.empName = "Bakul"
copyOneEmp.empSalary = 30000
print("EmpId - \(oneEmp.empId) EmpName - \(oneEmp.empName) EmpSalary - \(oneEmp.empSalary)")
print("EmpId - \(copyOneEmp.empId) EmpName - \(copyOneEmp.empName) EmpSalary - \(copyOneEmp.empSalary)")

copyOneEmp.doSalaryIncrement(increment: 5000)



// ============ Class ============ //
//Class classname
//{
//    Definition 1
//    Definition 2
//        ---
//    Definition N
//}

class EmployeeClass : Equatable
{
    var empId: Int
    var empName: String
    var empSalary: Int
    
    init(empId: Int, empName: String, empSalary: Int)
    {
        self.empId = empId
        self.empName = empName
        self.empSalary = empSalary
    }
    
    static func == (lhs: EmployeeClass, rhs: EmployeeClass) -> Bool {
        return lhs.empId == rhs.empId && lhs.empName == rhs.empName  && lhs.empSalary == rhs.empSalary
    }
}

var testEmpObj = EmployeeClass(empId: 103, empName:"Bharat", empSalary:40000)
print("EmpId - \(testEmpObj.empId) EmpName - \(testEmpObj.empName) EmpSalary - \(testEmpObj.empSalary)")

var copytestEmpObj = testEmpObj
copytestEmpObj.empName = "Rajesh"
copytestEmpObj.empSalary = 20000
print("EmpId - \(testEmpObj.empId) EmpName - \(testEmpObj.empName) EmpSalary - \(testEmpObj.empSalary)")
print("EmpId - \(copytestEmpObj.empId) EmpName - \(copytestEmpObj.empName) EmpSalary - \(copytestEmpObj.empSalary)")

var anotherTestEmpObj = EmployeeClass(empId: 103, empName:"Rajesh", empSalary:20000)

if (anotherTestEmpObj == copytestEmpObj)
{
    print("anotherTestEmpObj and copytestEmpObj have same values.")
}

if (testEmpObj === copytestEmpObj)
{
    print("testEmpObj and testEmpObj referer to same instance.")
}

if (anotherTestEmpObj !== copytestEmpObj)
{
    print("anotherTestEmpObj and copytestEmpObj don't referer to same instance.")
}



// ============ Properties ============ //

//1. Stored Property
//2. Computed Property

class EmployeeWorks
{
    var development = "iPhone Application Development"
}

class Employee1Class
{
    var empId: Int
    var empName: String
    var empSalary: Float

    lazy var empWorks = EmployeeWorks()
    
    var tax : (Float)
    {
        get
        {
            return empSalary*0.05
        }
        
        set(value)
        {
            empSalary = value/0.05
        }
    }
    
    init(empId: Int, empName: String, empSalary: Float)
    {
        self.empId = empId
        self.empName = empName
        self.empSalary = empSalary
    }
}

var emp1ClassObj = Employee1Class(empId: 1407, empName: "Albert", empSalary: 25000 )
print("Tax = \(emp1ClassObj.tax) Works = \(emp1ClassObj.empWorks.development)")

emp1ClassObj.tax = 3000
print("Now salary is \(emp1ClassObj.empSalary)")


// Property observer && Type property
class Employee2Class
{
    static var totalDebt = 2000
    
    class var homeLoan : Int
    {
        get
        {
            return totalDebt - 30
        }
        
        set
        {
            totalDebt += newValue
        }
    }
    
    var salary: Int = 0
    {
       willSet(newValue)
       {
          print("New Value will be set as \(newValue)")
       }
        
       didSet
       {
          print("\(oldValue) is replaced with \(salary)")
       }
    }
    
    init(salary: Int)
    {
        self.salary = salary
    }
    
    class func printCompanyDetails()
    {
        print("Working for XYZ organisation")
    }
}

var emp2Obj = Employee2Class(salary: 3000)
emp2Obj.salary = 20000

Employee2Class.homeLoan = 200
print("Home Loan = \(Employee2Class.homeLoan)")
Employee2Class.printCompanyDetails()



// ============ Subscript ============ //
class Class10
{
    var students = ["Albert", "Miller", "John"]
    
    subscript (index: Int) -> String
    {
       get
       {
            return students[index]
       }
        
       set
       {
           students[index] = newValue
       }
    }
}

var class10Obj = Class10()
print("Second student is \(class10Obj[1])")
class10Obj[2] = "Robert"
print("Third student is \(class10Obj[2])")



// ============ Inheritance ============ //

// (Methods, Properties, Subscripts)
// final - Prevent inheritance

class Games
{
    var players: Int
    var groundArea: Int
    
    var score: String
    {
        return "Total score should be defined"
    }
    
    init(players: Int, groundArea: Int)
    {
        self.players = players
        self.groundArea = groundArea
    }
    
    func printDescription()
    {
        print("\(String(describing: type(of: self))) Game total players = \(players) groundArea = \(groundArea) Total Score = \(score)")
    }
}

class Cricket : Games
{
    override var score: String
    {
        return "Total Run = 101/9"
    }
    
    init()
    {
        super.init(players: 11, groundArea: 150)
    }
    
    override func printDescription()
    {
        //super.printDescription()
        print("Cricket is nice game in which \(players) play as a team in \(groundArea) yard.")
    }
    
    func hitSix()
    {
        print("Six run in cricket.")
    }
}

class Tennis : Games
{
    init()
    {
        super.init(players: 2, groundArea: 59)
    }
}

class Football : Games
{
    init()
    {
        super.init(players: 11, groundArea: 180)
    }
}

// Any          => Any type including function types.
// AnyObject    => Instance of any class type
var gamesObjArray:[Games] = [Games(players: 0, groundArea: 0) ,Cricket(), Tennis(), Football()]

for gamesObj in gamesObjArray
{
    if let crickObj = gamesObj as? Cricket
    {
        crickObj.hitSix()
    }
    
    if gamesObj is Tennis
    {
        print("Tennis is going on.")
    }
    
    gamesObj.printDescription()
}



// ============ Initialization ============ //

struct DemoStruct
{
    //Set default value
    var property1: Int = 9
    let propertyConst: Int
    
    //Optionaltype
    let multiplicationValue: Int?
    
    init()
    {
        self.init(10, 11)
    }
    
    init?(_ property1: Int)
    {
        if(property1 == 0)
        {
            return nil
        }
        
        self.init(property1, 15)
    }
    
    //Parameter initialization + Parameters without External Names using _
    
    init(_ property1: Int, _ propertyConst: Int)
    {
        self.property1 = property1
        self.propertyConst = propertyConst
        self.multiplicationValue = property1*propertyConst
    }
    
    func printDescription()
    {
        print("property1 = \(property1) propertyConst = \(propertyConst) multiplicationValue = \(multiplicationValue!)")
    }
}

var demoObj = DemoStruct()
demoObj.printDescription()

var demoObj1 = DemoStruct(15, 20)
demoObj1.printDescription()


if let demoObj2 = DemoStruct(1) // DemoStruct(0)
{
    demoObj2.printDescription()
}
else
{
    print("Failed to initialise")
}

print("============================")

class DemoClass
{
    //Set default value
    var property1: Int = 9
    let propertyConst: Int
    
    //Optionaltype
    var multiplicationValue: Int?
    
    convenience init()
    {
        self.init(10, 25)
    }
    
    convenience init?(_ property1: Int)
    {
        if(property1 == 0)
        {
            return nil
        }
        
        self.init(property1, 15)
    }
    
    //Parameter initialization + Parameters without External Names using _
    init(_ property1: Int, _ propertyConst: Int)
    {
        self.property1 = property1
        self.propertyConst = propertyConst
        self.multiplicationValue = property1*propertyConst
    }
    
    func printDescription()
    {
        print("property1 = \(property1) propertyConst = \(propertyConst) multiplicationValue = \(multiplicationValue!)")
    }
}

var demoClassObj = DemoClass()
demoClassObj.printDescription()

if let demoClassObj1 = DemoClass(1) // DemoStruct(0)
{
    demoClassObj1.printDescription()
}
else
{
    print("Failed to initialise")
}

print("============================")

class SubDemoClass: DemoClass
{
    override init(_ property1: Int, _ propertyConst: Int)
    {
        super.init(property1, propertyConst)
        multiplicationValue = 1000
    }
    
    required convenience init()
    {
        self.init(19, 18)
    }
}

class SubOfSubDemoClass: SubDemoClass
{
    var otherValue: Int
    
    required init()
    {
        otherValue = 10
        super.init(10, 15)
    }
}

var subDemoClassObj = SubDemoClass()
subDemoClassObj.printDescription()

var subOfSubDemoClassObj = SubOfSubDemoClass()
subOfSubDemoClassObj.printDescription()

enum CountriesEnum
{
    case Australia,
    Brazli,
    China,
    Denmark,
    India
    
    init?(_ id: String)
    {
        switch id
        {
        case "AUS":
            self = .Australia
            
        case "BRA":
            self = .Brazli
            
        case "CHI":
            self = .China
            
        case "DEN":
            self = .Denmark
            
        case "IND":
            self = .India
            
        default:
            return nil
        }
    }
}

if let country = CountriesEnum("DEN") // Countries("LLL")
{
    print("\(country) found")
}
else
{
    print("Value doesn't exist")
}



// ============ Weak and Unowned References ============ //

//Don’t increase the retain count by one
 
//Weak    = > optional variables, constant as weak not allowed
//Unowned = > optional not allowed, Should use when you are sure that the object will never be nil once it has been set.
 
class Movie
{
    var name: String
    weak var assignedBook: Book?
    
    init(name: String)
    {
        self.name = name;
    }
    
    deinit
    {
        print("Movie is destroyed.")
    }
}

class Book
{
    var name: String
    
    init(name: String)
    {
        self.name = name;
    }
    
    deinit
    {
        print("Book is destroyed.")
    }
}

var movieObj: Movie? = Movie(name: "Harry Porter")
var bookObj: Book? = Book(name: "HPorter Book")

movieObj?.assignedBook = bookObj
bookObj = nil

if let assignBook = movieObj?.assignedBook
{
    print("Book name is \(assignBook.name)")
}
else
{
    print("Book obj is released.")
}



// ============ Extensions ============ //

//extension DemoClass: SomeProtocol, AnotherProtocol
//{
//    Add new functionality here.
//}

// Computed Properties

extension Double
{
    var gst: Double { return self*0.05 }
    
    init(addgst: Double)
    {
        self = addgst * 0.1
    }
    
    func deductGST(valuee: Double) -> Double
    {
        return self - (self * (valuee/100))
    }
}

var buildingMaterial = 1000.0.gst
print("Building GST = \(buildingMaterial)")

var materialGST = Double(addgst: 15000)
print("materialGST = \(materialGST)")

var materialAfterGST = 12000.0.deductGST(valuee: 5)
print("materialAfterGST = \(materialAfterGST)")



// ============ Protocols ============ //

//protocol ProtocolName
//{
//    // protocol definition
//}

//struct StructureName: ProtocolName, ProtocolName1
//{
//    // structure definition
//}

//class SubClass: SuperClass, ProtocolName, ProtocolName1
//{
//    // class definition
//}

protocol IPrinterResult
{
    func printResult()
}

class HBPrinter :IPrinterResult
{
    func printResult()
    {
        print("Print done by HB")
    }
}

class BellPrinter :IPrinterResult
{
    func printResult()
    {
        print("Print done by Bell")
    }
}

var prntObjArray: [IPrinterResult] = [HBPrinter(), BellPrinter()]

for prntObj in prntObjArray
{
    prntObj.printResult()
}

var prnt1ObjArray: [AnyObject] = [HBPrinter(), BellPrinter()]

for prnt1Obj in prnt1ObjArray
{
    if let prnt1ObjLocal = prnt1Obj as? IPrinterResult
    {
        prnt1ObjLocal.printResult()
    }
}



// ============ Generics ============ //

func interchangeValue<T>(a: inout T, b: inout T)
{
    let temp = a
    a = b
    b = temp
}

var numb1 = 100
var numb2 = 200

print("Origin values are: \(numb1) and \(numb2)")
interchangeValue(a: &numb1, b: &numb2)
print("InterchangeValue values are: \(numb1) and \(numb2)")

var firstNamee = "Albert"
var lastNamee = "Desoza"

print("Origin Strings are: \(firstNamee) and \(lastNamee)")
interchangeValue(a: &firstNamee, b: &lastNamee)
print("InterchangeValue Strings are: \(firstNamee) and \(lastNamee)")



// ============ Access Control ============ //

// Public   => Source file from another module that imports the defining module.
// Internal => Source file from its defining module, but not in any source file outside of that module.
// Private  => Restricts the use of an entity to its own defining source file.

//Apply on Functions, Enumeration types, Classes, Constants, Variables, Properties, Subscripts, Extensions, Protocols, Extensions, Generics,Type Aliases
