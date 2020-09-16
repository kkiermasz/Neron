//
//  LayoutAnchor+Dimension.swift
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
    
    public enum Dimension {
        
        case width
        case height
        
        var attribute: NSLayoutConstraint.Attribute {
            switch self {
            case .width: return .width
            case .height: return .height
            }
        }
        
    }
    
}
