//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

extension ViewLayout {
    
    final class ViewDimensionLayout: DimensionLayout {
        
        // MARK: - Properties
        
        private let anchor: LayoutAnchor.Dimension
        private let view: View
        private let invoker: Layout
        private let container: ConstraintsContainer
        
        // MARK: - Initialization
        
        init(for view: View, anchor: LayoutAnchor.Dimension, invoker: Layout, container: ConstraintsContainer) {
            self.view = view
            self.anchor = anchor
            self.invoker = invoker
            self.container = container
        }
        
        // MARK: - AxisLayout
        
        func equalTo(constant: CGFloat) -> ConstraintMultiplier {
            let constraint = LayoutConstraint(item: view, itemAttribute: self.anchor.attribute, relation: .equal, constant: constant)
            return makePrioritizer(for: endorse(constraint))
        }
        
        func lessThanOrEqualTo(constant: CGFloat) -> ConstraintMultiplier {
            let constraint = LayoutConstraint(item: view, itemAttribute: self.anchor.attribute, relation: .lessThanOrEqual, constant: constant)
            return makePrioritizer(for: endorse(constraint))
        }
        
        func greaterThanOrEqualTo(constant: CGFloat) -> ConstraintMultiplier {
            let constraint = LayoutConstraint(item: view, itemAttribute: self.anchor.attribute, relation: .greaterThanOrEqual, constant: constant)
            return makePrioritizer(for: endorse(constraint))
        }
        
        func equalTo(_ sibling: View, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier {
            let constraint = LayoutConstraint(item: view, itemAttribute: self.anchor.attribute, relation: .equal, target: sibling, targetAttribute: anchor.attribute)
            return makePrioritizer(for: endorse(constraint))
        }
        
        func lessThanOrEqualTo(_ sibling: View, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier {
            let constraint = LayoutConstraint(item: view, itemAttribute: self.anchor.attribute, relation: .lessThanOrEqual, target: sibling, targetAttribute: anchor.attribute)
            return makePrioritizer(for: endorse(constraint))
        }
        
        func greaterThanOrEqualTo(_ sibling: View, _ anchor: LayoutAnchor.Dimension) -> ConstraintMultiplier {
            let constraint = LayoutConstraint(item: view, itemAttribute: self.anchor.attribute, relation: .greaterThanOrEqual, target: sibling, targetAttribute: anchor.attribute)
            return makePrioritizer(for: endorse(constraint))
        }
        
        // MARK: - Private
        
        private func endorse(_ constraint: LayoutConstraint) -> LayoutConstraint {
            container.add(constraint)
            return constraint
        }
        
        private func makePrioritizer(for constraint: LayoutConstraint) -> ConstraintMultiplier {
            DefaultLayoutResult(constraint: constraint, invoker: invoker, container: container)
        }
        
    }
    
}
