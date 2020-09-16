//
//  LayoutAnchor+Axis.swift
//
//
//  Created by jaki on 10/09/2020.
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
