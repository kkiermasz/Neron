//
//  YAxisLayout.swift
//  
//
//  Created by jaki on 07/09/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

public protocol YAxisLayout {
    
    @discardableResult
    func equalTo(_ sibling: View, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    @discardableResult
    func lessThanOrEqualTo(_ sibling: View, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    @discardableResult
    func greaterThanOrEqualTo(_ sibling: View, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    
    @discardableResult
    func equalTo(_ layoutGuide: LayoutGuide, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    @discardableResult
    func lessThanOrEqualTo(_ layoutGuide: LayoutGuide, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    @discardableResult
    func greaterThanOrEqualTo(_ layoutGuide: LayoutGuide, _ anchor: LayoutAnchor.YAxis) -> ConstraintMultiplier
    
}
