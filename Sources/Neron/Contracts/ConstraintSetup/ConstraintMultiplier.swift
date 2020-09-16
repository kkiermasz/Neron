//
//  ConstraintMultiplier.swift
//  
//
//  Created by jaki on 11/09/2020.
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
