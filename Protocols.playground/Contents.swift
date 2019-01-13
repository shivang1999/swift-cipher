import UIKit

//Protocol- blueprint can contain methods/properties. We can conform to a certain protocol from a class or from a structure or an enumeration.

protocol Number {
    
    var floatValue: Float {
        get
    }
}

//conform to it just like subclassing/ a rectangle sub class
extension Float: Number {
    var floatValue : Float {
        return self
    }
}

extension Double : Number {
    var floatValue : Float {
        return Float(self)
    }
}

var three : Double = 3
var four : Float = 4
three.floatValue + four

extension Int : Number {
    var floatValue : Float {
        return Float(self)
    }
}

extension UInt : Number {
    var floatValue : Float {
        return Float(self)
    }
}
func +(valueA : Number, valueB : Number) -> Float {
    return valueA.floatValue + valueB.floatValue
}

let x : Double = 1.233
let y : Int = 5
let q = x+y



