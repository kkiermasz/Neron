//
//  File.swift
//  
//
//  Created by jaki on 13/08/2020.
//

import UIKit

extension ViewLayout {
    
    struct ViewAxisLayout: AxisLayout {
        
        // MARK: - Properties
        
        private let axis: LayoutAnchor.Axis
        private let view: UIView
        private let invoker: LayoutInvoker
        
        // MARK: - Initialization
        
        init(for view: UIView, axis: LayoutAnchor.Axis, invoker: LayoutInvoker) {
            self.view = view
            self.axis = axis
            self.invoker = invoker
        }
        
        // MARK: - AxisLayout
        
        func center(with sibling: UIView, constant: CGFloat) -> ConstraintActivationResult {
            let constraint: NSLayoutConstraint
            
            switch axis {
            case .xAxis: constraint = view.centerXAnchor.constraint(equalTo: sibling.centerXAnchor, constant: constant)
            case .yAxis: constraint = view.centerYAnchor.constraint(equalTo: sibling.centerYAnchor, constant: constant)
            }
            
            invoker.endorse(constraint)
            
            return DefaultConstraintActivationResult(constraint: constraint, invoker: invoker)
        }
        
    }
    
}
