//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
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
