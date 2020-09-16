//
//  LayoutAnchor+YAxis.swift
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
    
    public enum YAxis {
        
        case top
        case bottom
        
        var attribute: NSLayoutConstraint.Attribute {
            switch self {
            case .top: return .top
            case .bottom: return .bottom
            }
        }
        
    }
    
}
