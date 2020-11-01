//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
import UIKit
public protocol YAxisLayout {
    
    @discardableResult
    func equalTo(_ sibling: UIView, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    @discardableResult
    func lessThanOrEqualTo(_ sibling: UIView, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    @discardableResult
    func greaterThanOrEqualTo(_ sibling: UIView, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    
    @discardableResult
    func equalTo(_ layoutGuide: UILayoutGuide, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    @discardableResult
    func lessThanOrEqualTo(_ layoutGuide: UILayoutGuide, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    @discardableResult
    func greaterThanOrEqualTo(_ layoutGuide: UILayoutGuide, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    
}
#else
import AppKit
public protocol YAxisLayout {
    
    @discardableResult
    func equalTo(_ sibling: NSView, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    @discardableResult
    func lessThanOrEqualTo(_ sibling: NSView, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    @discardableResult
    func greaterThanOrEqualTo(_ sibling: NSView, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    
    @discardableResult
    func equalTo(_ layoutGuide: NSLayoutGuide, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    @discardableResult
    func lessThanOrEqualTo(_ layoutGuide: NSLayoutGuide, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    @discardableResult
    func greaterThanOrEqualTo(_ layoutGuide: NSLayoutGuide, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    
}
#endif
