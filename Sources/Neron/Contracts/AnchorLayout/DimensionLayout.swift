//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

public protocol DimensionLayout {

    @discardableResult
    func equalTo(constant: CGFloat) -> ConstraintMultiplier

    @discardableResult
    func lessThanOrEqualTo(constant: CGFloat) -> ConstraintMultiplier

    @discardableResult
    func greaterThanOrEqualTo(constant: CGFloat) -> ConstraintMultiplier

    #if canImport(UIKit)

    @discardableResult
    func equalTo(_ sibling: UIView, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier

    @discardableResult
    func lessThanOrEqualTo(_ sibling: UIView, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier

    @discardableResult
    func greaterThanOrEqualTo(_ sibling: UIView, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier

    @discardableResult
    func equalTo(_ layoutGuide: UILayoutGuide, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier

    @discardableResult
    func lessThanOrEqualTo(_ layoutGuide: UILayoutGuide, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier

    @discardableResult
    func greaterThanOrEqualTo(_ layoutGuide: UILayoutGuide, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier

    #else

    @discardableResult
    func equalTo(_ sibling: NSView, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier

    @discardableResult
    func lessThanOrEqualTo(_ sibling: NSView, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier

    @discardableResult
    func greaterThanOrEqualTo(_ sibling: NSView, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier

    @discardableResult
    func equalTo(_ layoutGuide: NSLayoutGuide, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier

    @discardableResult
    func lessThanOrEqualTo(_ layoutGuide: NSLayoutGuide, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier

    @discardableResult
    func greaterThanOrEqualTo(_ layoutGuide: NSLayoutGuide, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier

    #endif

}
