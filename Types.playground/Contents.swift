let metaType = String.self
let dynMetaType = type(of: "")

let date = "2019"
if type(of: date) == String.self {
    print("This is String.")
}


// Struct as type

struct TestStruct {
    var i: Int
    var s: String
}
var metaStructType = TestStruct.self // __lldb_expr_13.TestStruct.Type
TestStruct.self // __lldb_expr_13.TestStruct.Type

var newVar = TestStruct(i: 10, s: "fggg")

if type(of: newVar) == TestStruct.self {
    print("This is TestStruct")
} else {
    print("Need to google it: how to check complex types?")
}

// Class as type

class TestClass {
    var i: Int
    var s: String
    init() {
        i = 10
        s = "rrr"
    }
}
print(TestClass.self)

var newClassVar = TestClass()

if type(of: newClassVar) == TestClass.self {
    print("This is TestClass")
} else {
    print("Need to google it: how to check if a var of a class instance?")
}
