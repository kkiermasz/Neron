//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

public protocol ConstraintMultiplier: ConstraintPrioritizer {
    
    // MARK: - API
    
    @discardableResult
    func multiplied(by multiplier: CGFloat) -> ConstraintPrioritizer
    
}
