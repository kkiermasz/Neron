//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

public protocol ConstraintPrioritizer: ConstraintConstantizer {

    // MARK: - API

    @discardableResult
    func with(priority: Float) -> ConstraintConstantizer

    #if canImport(UIKit)

    @discardableResult
    func with(priority: UILayoutPriority) -> ConstraintConstantizer
    #else

    @discardableResult
    func with(priority: NSLayoutConstraint.Priority) -> ConstraintConstantizer

    #endif

}
