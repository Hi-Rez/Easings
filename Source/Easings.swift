import Foundation

public func easeLinear(_ t: Double) -> Double {
    return t
}

public func easeSmoothstep(_ t: Double) -> Double {
    return t * t * (3 - 2 * t)
}

public func easeInSine(_ t: Double) -> Double {
    return sin(1.5707963 * t)
}

public func easeOutSine(_ t: Double) -> Double {
    let tMinueOne = t - 1.0
    return 1.0 + sin(1.5707963 * tMinueOne)
}

public func easeInOutSine(_ t: Double) -> Double {
    return 0.5 * (1.0 + sin(3.1415926 * (t - 0.5)))
}

public func easeInQuad(_ t: Double) -> Double {
    return t * t
}

public func easeOutQuad(_ t: Double) -> Double {
    return t * (2.0 - t)
}

public func easeInOutQuad(_ t: Double) -> Double {
    return t < 0.5 ? 2.0 * t * t : t * (4.0 - 2.0 * t) - 1.0
}

public func easeInCubic(_ t: Double) -> Double {
    return t * t * t
}

public func easeOutCubic(_ t: Double) -> Double {
    let tMinueOne = t - 1.0
    return 1 + tMinueOne * tMinueOne * tMinueOne
}

public func easeInOutCubic(_ t: Double) -> Double {
    let tMinueOne = t - 1.0
    let tMinueTwo = t - 2.0
    return t < 0.5 ? 4.0 * t * t * t : 1.0 + tMinueOne * (2.0 * tMinueTwo) * (2.0 * t)
}

public func easeInQuart(_ t: Double) -> Double {
    let t2 = t * t
    return t2 * t2
}

public func easeOutQuart(_ t: Double) -> Double {
    let tMinueOne = t - 1.0
    let tn = tMinueOne * tMinueOne
    return 1 - tn * tn
}

public func easeInOutQuart(_ t: Double) -> Double {
    if t < 0.5 {
        let tn = t * t
        return 8.0 * tn * tn
    } else {
        let tMinueOne = t - 1.0
        let tn = tMinueOne * tMinueOne
        return 1.0 - 8.0 * tn * tn
    }
}

public func easeInQuint(_ t: Double) -> Double {
    let t2 = t * t
    return t * t2 * t2
}

public func easeOutQuint(_ t: Double) -> Double {
    let tMinueOne = t - 1.0
    let t2 = tMinueOne * tMinueOne
    return 1.0 + tMinueOne * t2 * t2
}

public func easeInOutQuint(_ t: Double) -> Double {
    var t2: Double
    if t < 0.5 {
        t2 = t * t
        return 16.0 * t * t2 * t2
    } else {
        let tMinueOne = t - 1.0
        t2 = tMinueOne * tMinueOne
        return 1.0 + 16.0 * t * t2 * t2
    }
}

public func easeInExpo(_ t: Double) -> Double {
    return (pow(2.0, 8.0 * t) - 1.0) / 255.0
}

public func easeOutExpo(_ t: Double) -> Double {
    return 1.0 - pow(2.0, -8.0 * t)
}

public func easeInOutExpo(_ t: Double) -> Double {
    if t < 0.5 {
        return (pow(2.0, 16.0 * t) - 1) / 510.0
    } else {
        return 1 - 0.5 * pow(2.0, -16.0 * (t - 0.5))
    }
}

public func easeInCirc(_ t: Double) -> Double {
    return 1.0 - sqrt(1.0 - t)
}

public func easeOutCirc(_ t: Double) -> Double {
    return sqrt(t)
}

public func easeInOutCirc(_ t: Double) -> Double {
    if t < 0.5 {
        return (1.0 - sqrt(1.0 - 2.0 * t)) * 0.5
    } else {
        return (1.0 + sqrt(2.0 * t - 1.0)) * 0.5
    }
}

public func easeInBack(_ t: Double) -> Double {
    return t * t * (2.70158 * t - 1.70158)
}

public func easeOutBack(_ t: Double) -> Double {
    let tMinueOne = t - 1.0
    return 1 + tMinueOne * tMinueOne * (2.70158 * tMinueOne + 1.70158)
}

public func easeInOutBack(_ t: Double) -> Double {
    if t < 0.5 {
        return t * t * (7.0 * t - 2.5) * 2.0
    } else {
        let tMinueOne = t - 1.0
        return 1.0 + tMinueOne * tMinueOne * 2.0 * (7.0 * tMinueOne + 2.5)
    }
}

public func easeInElastic(_ t: Double) -> Double {
    let t2 = t * t
    return t2 * t2 * sin(t * Double.pi * 4.5)
}

public func easeOutElastic(_ t: Double) -> Double {
    let t2 = (t - 1) * (t - 1)
    return 1 - t2 * t2 * cos(t * Double.pi * 4.5)
}

public func easeInOutElastic(_ t: Double) -> Double {
    let t2: Double
    if t < 0.45 {
        t2 = t * t
        return 8.0 * t2 * t2 * sin(t * Double.pi * 9.0)
    } else if t < 0.55 {
        return 0.5 + 0.75 * sin(t * Double.pi * 4.0)
    } else {
        t2 = (t - 1.0) * (t - 1.0)
        return 1.0 - 8.0 * t2 * t2 * sin(t * Double.pi * 9.0)
    }
}

public func easeInBounce(_ t: Double) -> Double {
    return pow(2.0, 6.0 * (t - 1)) * abs(sin(t * Double.pi * 3.5))
}

public func easeOutBounce(_ t: Double) -> Double {
    return 1.0 - pow(2.0, -6.0 * t) * abs(cos(t * Double.pi * 3.5))
}

public func easeInOutBounce(_ t: Double) -> Double {
    if t < 0.5 {
        return 8.0 * pow(2.0, 8.0 * (t - 1.0)) * abs(sin(t * Double.pi * 7.0))
    } else {
        return 1.0 - 8.0 * pow(2.0, -8.0 * t) * abs(sin(t * Double.pi * 7.0))
    }
}

public func easeLinear(_ t: Float) -> Float {
    return t
}

public func easeSmoothstep(_ t: Float) -> Float {
    return t * t * (3 - 2 * t)
}

public func easeInSine(_ t: Float) -> Float {
    return sin(1.5707963 * t)
}

public func easeOutSine(_ t: Float) -> Float {
    let tMinueOne = t - 1.0
    return 1.0 + sin(1.5707963 * tMinueOne)
}

public func easeInOutSine(_ t: Float) -> Float {
    return 0.5 * (1.0 + sin(3.1415926 * (t - 0.5)))
}

public func easeInQuad(_ t: Float) -> Float {
    return t * t
}

public func easeOutQuad(_ t: Float) -> Float {
    return t * (2.0 - t)
}

public func easeInOutQuad(_ t: Float) -> Float {
    return t < 0.5 ? 2.0 * t * t : t * (4.0 - 2.0 * t) - 1.0
}

public func easeInCubic(_ t: Float) -> Float {
    return t * t * t
}

public func easeOutCubic(_ t: Float) -> Float {
    let tMinueOne = t - 1.0
    return 1 + tMinueOne * tMinueOne * tMinueOne
}

public func easeInOutCubic(_ t: Float) -> Float {
    let tMinueOne = t - 1.0
    let tMinueTwo = t - 2.0
    return t < 0.5 ? 4.0 * t * t * t : 1.0 + tMinueOne * (2.0 * tMinueTwo) * (2.0 * t)
}

public func easeInQuart(_ t: Float) -> Float {
    let t2 = t * t
    return t2 * t2
}

public func easeOutQuart(_ t: Float) -> Float {
    let tMinueOne = t - 1.0
    let tn = tMinueOne * tMinueOne
    return 1 - tn * tn
}

public func easeInOutQuart(_ t: Float) -> Float {
    if t < 0.5 {
        let tn = t * t
        return 8.0 * tn * tn
    } else {
        let tMinueOne = t - 1.0
        let tn = tMinueOne * tMinueOne
        return 1.0 - 8.0 * tn * tn
    }
}

public func easeInQuint(_ t: Float) -> Float {
    let t2 = t * t
    return t * t2 * t2
}

public func easeOutQuint(_ t: Float) -> Float {
    let tMinueOne = t - 1.0
    let t2 = tMinueOne * tMinueOne
    return 1.0 + tMinueOne * t2 * t2
}

public func easeInOutQuint(_ t: Float) -> Float {
    var t2: Float
    if t < 0.5 {
        t2 = t * t
        return 16.0 * t * t2 * t2
    } else {
        let tMinueOne = t - 1.0
        t2 = tMinueOne * tMinueOne
        return 1.0 + 16.0 * t * t2 * t2
    }
}

public func easeInExpo(_ t: Float) -> Float {
    return (pow(2.0, 8.0 * t) - 1.0) / 255.0
}

public func easeOutExpo(_ t: Float) -> Float {
    return 1.0 - pow(2.0, -8.0 * t)
}

public func easeInOutExpo(_ t: Float) -> Float {
    if t < 0.5 {
        return (pow(2.0, 16.0 * t) - 1) / 510.0
    } else {
        return 1 - 0.5 * pow(2.0, -16.0 * (t - 0.5))
    }
}

public func easeInCirc(_ t: Float) -> Float {
    return 1.0 - sqrt(1.0 - t)
}

public func easeOutCirc(_ t: Float) -> Float {
    return sqrt(t)
}

public func easeInOutCirc(_ t: Float) -> Float {
    if t < 0.5 {
        return (1.0 - sqrt(1.0 - 2.0 * t)) * 0.5
    } else {
        return (1.0 + sqrt(2.0 * t - 1.0)) * 0.5
    }
}

public func easeInBack(_ t: Float) -> Float {
    return t * t * (2.70158 * t - 1.70158)
}

public func easeOutBack(_ t: Float) -> Float {
    let tMinueOne = t - 1.0
    return 1 + tMinueOne * tMinueOne * (2.70158 * tMinueOne + 1.70158)
}

public func easeInOutBack(_ t: Float) -> Float {
    if t < 0.5 {
        return t * t * (7.0 * t - 2.5) * 2.0
    } else {
        let tMinueOne = t - 1.0
        return 1.0 + tMinueOne * tMinueOne * 2.0 * (7.0 * tMinueOne + 2.5)
    }
}

public func easeInElastic(_ t: Float) -> Float {
    let t2 = t * t
    return t2 * t2 * sin(t * Float.pi * 4.5)
}

public func easeOutElastic(_ t: Float) -> Float {
    let t2 = (t - 1) * (t - 1)
    return 1 - t2 * t2 * cos(t * Float.pi * 4.5)
}

public func easeInOutElastic(_ t: Float) -> Float {
    let t2: Float
    if t < 0.45 {
        t2 = t * t
        return 8.0 * t2 * t2 * sin(t * Float.pi * 9.0)
    } else if t < 0.55 {
        return 0.5 + 0.75 * sin(t * Float.pi * 4.0)
    } else {
        t2 = (t - 1.0) * (t - 1.0)
        return 1.0 - 8.0 * t2 * t2 * sin(t * Float.pi * 9.0)
    }
}

public func easeInBounce(_ t: Float) -> Float {
    return pow(2.0, 6.0 * (t - 1)) * abs(sin(t * Float.pi * 3.5))
}

public func easeOutBounce(_ t: Float) -> Float {
    return 1.0 - pow(2.0, -6.0 * t) * abs(cos(t * Float.pi * 3.5))
}

public func easeInOutBounce(_ t: Float) -> Float {
    if t < 0.5 {
        return 8.0 * pow(2.0, 8.0 * (t - 1.0)) * abs(sin(t * Float.pi * 7.0))
    } else {
        return 1.0 - 8.0 * pow(2.0, -8.0 * t) * abs(sin(t * Float.pi * 7.0))
    }
}
