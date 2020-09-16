//
//  ConstraintConstantizer.swift
//  
//
//  Created by jaki on 04/09/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

public protocol ConstraintConstantizer: LayoutResult {
    
    // MARK: - API
    
    @discardableResult
    func with(constant: CGFloat) -> LayoutResult
    
}
