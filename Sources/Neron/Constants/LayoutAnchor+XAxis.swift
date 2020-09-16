//
//  LayoutAnchor+XAxis.swift
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
    
    public enum XAxis {
        
        case leading
        case trailing
        
        var attribute: NSLayoutConstraint.Attribute {
            switch self {
            case .leading: return .leading
            case .trailing: return .trailing
            }
        }
        
    }
    
}
