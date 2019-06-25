import Foundation

var start: CFAbsoluteTime!
var finish: CFAbsoluteTime!
var ncVar: String? = "a"
var obVar: String? = "b"
var guardVar: String? = "c"

let measurementCount = 100000

func measureNilCoalescing () {
    for _ in 0...measurementCount {
        var resA = ncVar ?? "altA"
    }
}

func measureOptionalBinding () {
    for _ in 0...measurementCount {
        if var resB = obVar {

        } else {
            var resB = "altB"
        }
    }
}

func measureGuard () {
    for _ in 0...measurementCount {
        guard var resC = guardVar else { return }
        resC = "altC"
    }
}

// Measure nil-coalescing
start = CFAbsoluteTimeGetCurrent()
measureNilCoalescing()
finish = CFAbsoluteTimeGetCurrent()
let ncDiff = String(format: "%.8f", finish - start)

// Measure guard
start = CFAbsoluteTimeGetCurrent()
measureGuard()
finish = CFAbsoluteTimeGetCurrent()
let guardDiff = String(format: "%.8f", finish - start)

// Measure optional binding
start = CFAbsoluteTimeGetCurrent()
measureOptionalBinding()
finish = CFAbsoluteTimeGetCurrent()
let obDiff = String(format: "%.8f", finish - start)

// Display results
print("  Nil coalescing took \(ncDiff) seconds")
print("Optional binding took \(obDiff) seconds")
print("           Guard took \(guardDiff) seconds")
