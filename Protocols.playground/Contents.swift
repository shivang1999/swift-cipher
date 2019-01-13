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



