//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

public protocol ViewLayoutConfiguration: LayoutConfiguration {
    
    // MARK: - API
    
    #if canImport(UIKit)
    
    @discardableResult
    func add(subviews: UIView...) -> ViewLayoutConfiguration
    
    #else
    
    @discardableResult
    func add(subviews: NSView...) -> ViewLayoutConfiguration
    
    #endif
    
    /// Embeds the view in another given as an argument. All anchors are pinned to the parent, shifted by the given value.
    ///
    /// - parameters:
    ///     - parent: The parent in which the view will be embedded
    ///     - padding: The value by which the view's edges will be shifted from the parent edges
    #if canImport(UIKit)
    @discardableResult
    func embed(in parent: UIView, with padding: CGFloat) -> Self
    #else
    @discardableResult
    func embed(in parent: NSView, with padding: CGFloat) -> Self
    #endif
    
    /// Embeds the view in another given as an argument. All anchors are pinned to the parent.
    ///
    /// - parameters:
    ///     - parent: The parent in which the view will be embedded
    #if canImport(UIKit)
    @discardableResult
    func embed(in parent: UIView) -> Self
    #else
    @discardableResult
    func embed(in parent: NSView) -> Self
    #endif
    
}
