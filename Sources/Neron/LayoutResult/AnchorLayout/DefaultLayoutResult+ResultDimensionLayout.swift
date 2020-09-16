//
//  DefaultLayoutResult+ResultDimensionLayout.swift
//
//
//  Created by jaki on 13/08/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

extension DefaultLayoutResult {
    
    final class ResultDimensionLayout: DimensionLayout {
        
        // MARK: - Properties
        
        private let anchor: LayoutAnchor.Dimension
        private let invoker: Layout
        
        private var invokerLayout: DimensionLayout {
            switch anchor {
            case .width: return invoker.width
            case .height: return invoker.height
            }
        }
        
        // MARK: - Initialization
        
        init(anchor: LayoutAnchor.Dimension, invoker: Layout) {
            self.anchor = anchor
            self.invoker = invoker
        }
        
        // MARK: - AxisLayout
        
        func equalTo(constant: CGFloat) -> ConstraintMultiplier {
            invokerLayout.equalTo(constant: constant)
        }
        
        func lessThanOrEqualTo(constant: CGFloat) -> ConstraintMultiplier {
            invokerLayout.lessThanOrEqualTo(constant: constant)
        }
        
        func greaterThanOrEqualTo(constant: CGFloat) -> ConstraintMultiplier {
            invokerLayout.greaterThanOrEqualTo(constant: constant)
        }
        
        func equalTo(_ sibling: View, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier {
            invokerLayout.equalTo(sibling, anchor)
        }
        
        func lessThanOrEqualTo(_ sibling: View, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier {
            invokerLayout.lessThanOrEqualTo(sibling, anchor)
        }
        
        func greaterThanOrEqualTo(_ sibling: View, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier {
            invokerLayout.greaterThanOrEqualTo(sibling, anchor)
        }
        
    }
    
}
