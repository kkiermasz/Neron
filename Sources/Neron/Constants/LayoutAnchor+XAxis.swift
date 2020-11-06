//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
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
