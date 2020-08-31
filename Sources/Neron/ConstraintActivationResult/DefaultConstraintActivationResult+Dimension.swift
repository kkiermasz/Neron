//
//  File.swift
//  
//
//  Created by jaki on 13/08/2020.
//

import UIKit

extension DefaultConstraintActivationResult {
    
    struct DefaultConstraintActivationResultDimensionLayout: DimensionLayout {
        
        // MARK: - Properties
        
        private let anchor: LayoutAnchor.Dimension
        private let invoker: Layout
        
        // MARK: - Initialization
        
        init(anchor: LayoutAnchor.Dimension, invoker: Layout) {
            self.anchor = anchor
            self.invoker = invoker
        }
        
        // MARK: - AxisLayout
        
        func connect(to sibling: UIView, _ siblingAnchor: LayoutAnchor.Dimension, multiplier: CGFloat, priority: UILayoutPriority?) -> ConstraintActivationResult {
            switch anchor {
            case .width: return invoker.width.connect(to: sibling, siblingAnchor, multiplier: multiplier, priority: priority)
            case .height: return invoker.height.connect(to: sibling, siblingAnchor, multiplier: multiplier, priority: priority)
            }
        }
        
        func equal(constant: CGFloat, with priority: UILayoutPriority?) -> ConstraintActivationResult {
            switch anchor {
            case .width: return invoker.width.equal(constant: constant, with: priority)
            case .height: return invoker.height.equal(constant: constant, with: priority)
            }
        }
        
    }
    
}
