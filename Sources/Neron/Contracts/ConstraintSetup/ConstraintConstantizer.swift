//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

public protocol ConstraintConstantizer: LayoutResult {
    
    // MARK: - API
    
    @discardableResult
    func with(constant: CGFloat) -> LayoutResult
    
}
