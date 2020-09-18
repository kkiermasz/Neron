//
//  XAxisLayout.swift
//
//
//  Created by jaki on 04/09/2020.
//

#if canImport(UIKit)
import UIKit

public protocol XAxisLayout {
    
    @discardableResult
    func equalTo(_ sibling: UIView, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier
    @discardableResult
    func lessThanOrEqualTo(_ sibling: UIView, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier
    @discardableResult
    func greaterThanOrEqualTo(_ sibling: UIView, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier
    
    @discardableResult
    func equalTo(_ layoutGuide: UILayoutGuide, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier
    @discardableResult
    func lessThanOrEqualTo(_ layoutGuide: UILayoutGuide, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier
    @discardableResult
    func greaterThanOrEqualTo(_ layoutGuide: UILayoutGuide, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier
    
}

#else

import AppKit

public protocol XAxisLayout {
    
    @discardableResult
    func equalTo(_ sibling: NSView, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier
    @discardableResult
    func lessThanOrEqualTo(_ sibling: NSView, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier
    @discardableResult
    func greaterThanOrEqualTo(_ sibling: NSView, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier
    
    @discardableResult
    func equalTo(_ layoutGuide: NSLayoutGuide, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier
    @discardableResult
    func lessThanOrEqualTo(_ layoutGuide: NSLayoutGuide, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier
    @discardableResult
    func greaterThanOrEqualTo(_ layoutGuide: NSLayoutGuide, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier
    
}
#endif
