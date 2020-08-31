//
//  File.swift
//  
//
//  Created by jaki on 13/08/2020.
//

import UIKit

public protocol DimensionLayout {
    
    @discardableResult
    func connect(to sibling: UIView, _ siblingAnchor: LayoutAnchor.Dimension, multiplier: CGFloat, priority: UILayoutPriority?) -> ConstraintActivationResult
    
    @discardableResult
    func equal(constant: CGFloat, with priority: UILayoutPriority?) -> ConstraintActivationResult
    
}
