//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

extension LayoutAnchor {
    
    public enum Axis {
        
        case xAxis
        case yAxis
        
        var attribute: NSLayoutConstraint.Attribute {
            switch self {
            case .xAxis: return .centerX
            case .yAxis: return .centerY
            }
        }
        
    }
    
}
