//
//  File.swift
//
//
//  Created by jaki on 13/08/2020.
//

import UIKit

extension ViewLayout {
    
    struct ViewDimensionLayout: DimensionLayout {
        
        // MARK: - Properties
        
        private let anchor: LayoutAnchor.Dimension
        private let view: UIView
        private let invoker: LayoutInvoker
        
        // MARK: - Initialization
        
        init(for view: UIView, anchor: LayoutAnchor.Dimension, invoker: LayoutInvoker) {
            self.view = view
            self.anchor = anchor
            self.invoker = invoker
        }
        
        // MARK: - AxisLayout
        
        func connect(to sibling: UIView, _ siblingAnchor: LayoutAnchor.Dimension, multiplier: CGFloat, priority: UILayoutPriority?) -> ConstraintActivationResult {
            let constraint: NSLayoutConstraint
            switch (anchor, siblingAnchor) {
            case (.width, .width): constraint = view.widthAnchor.constraint(equalTo: sibling.widthAnchor, multiplier: multiplier)
            case (.height, .height): constraint = view.heightAnchor.constraint(equalTo: sibling.heightAnchor, multiplier: multiplier)
            case (.width, .height): constraint = view.widthAnchor.constraint(equalTo: sibling.heightAnchor, multiplier: multiplier)
            case (.height, .width): constraint = view.heightAnchor.constraint(equalTo: sibling.widthAnchor, multiplier: multiplier)
            }
            
            constraint.set(priority: priority)
            invoker.endorse(constraint)
            
            return DefaultConstraintActivationResult(constraint: constraint, invoker: invoker)
        }
        
        func equal(constant: CGFloat, with priority: UILayoutPriority?) -> ConstraintActivationResult {
            let constraint: NSLayoutConstraint
            switch anchor {
            case .width: constraint = view.widthAnchor.constraint(equalToConstant: constant)
            case .height: constraint = view.heightAnchor.constraint(equalToConstant: constant)
            }
            
            constraint.set(priority: priority)
            invoker.endorse(constraint)
            
            return DefaultConstraintActivationResult(constraint: constraint, invoker: invoker)
        }
        
    }
    
}
