//
//  DimensionLayout.swift
//  
//
//  Created by jaki on 13/08/2020.
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
    
    @discardableResult
    func equalTo(_ sibling: View, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier
    
    @discardableResult
    func lessThanOrEqualTo(_ sibling: View, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier
    
    @discardableResult
    func greaterThanOrEqualTo(_ sibling: View, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier
    
}
