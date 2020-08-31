//
//  File.swift
//
//
//  Created by jaki on 13/08/2020.
//

import UIKit

extension DefaultConstraintActivationResult {
    
    struct DefaultConstraintActivationResultAxisLayout: AxisLayout {
        
        // MARK: - Properties
        
        private let axis: LayoutAnchor.Axis
        private let invoker: Layout
        
        // MARK: - Initialization
        
        init(axis: LayoutAnchor.Axis, invoker: Layout) {
            self.axis = axis
            self.invoker = invoker
        }
        
        // MARK: - AxisLayout
        
        func center(with sibling: UIView, constant: CGFloat) -> ConstraintActivationResult {
            switch axis {
            case .xAxis: return invoker.xAxis.center(with: sibling, constant: constant)
            case .yAxis: return invoker.yAxis.center(with: sibling, constant: constant)
            }
        }
        
    }
    
}
