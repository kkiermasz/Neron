//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

public protocol LayoutResult: Layout {
    
    // MARK: - Properties
    
    /// Last added constraint
    var constraint: NSLayoutConstraint { get }
    
    /// Added constraints
    ///
    /// - Warning: The array contains both inactive and active constrains. Calling `activate()` activates only previously added constraints.
    var constraints: [NSLayoutConstraint] { get }
    
}
