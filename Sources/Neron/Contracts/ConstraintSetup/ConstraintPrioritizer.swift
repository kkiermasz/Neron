//
//  ConstraintPrioritizer.swift
//  
//
//  Created by jaki on 04/09/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

public protocol ConstraintPrioritizer: ConstraintConstantizer {
    
    // MARK: - API
    
    @discardableResult
    func with(priority: LayoutPriority) -> ConstraintConstantizer
    
    @discardableResult
    func with(priority: Float) -> ConstraintConstantizer
    
}
