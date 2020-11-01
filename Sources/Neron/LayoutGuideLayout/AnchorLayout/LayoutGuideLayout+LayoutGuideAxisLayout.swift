//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

extension LayoutGuideLayout {
    
    final class LayoutGuideAxisLayout: AxisLayout {
        
        // MARK: - Properties
        
        private let axis: LayoutAnchor.Axis
        private let layoutGuide: LayoutGuide
        private let invoker: Layout
        private let container: ConstraintsContainer
        
        // MARK: - Initialization
        
        init(for view: LayoutGuide, axis: LayoutAnchor.Axis, invoker: Layout, container: ConstraintsContainer) {
            self.layoutGuide = view
            self.axis = axis
            self.invoker = invoker
            self.container = container
        }
        
        // MARK: - AxisLayout
        
        func center(with sibling: View) -> LayoutResult {
            let constraint = LayoutConstraint(item: layoutGuide, itemAttribute: axis.attribute, relation: .equal, target: sibling, targetAttribute: axis.attribute)
            return makePrioritizer(for: endorse(constraint))
        }
        
        func center(with layoutGuide: LayoutGuide) -> LayoutResult {
            let constraint = LayoutConstraint(item: self.layoutGuide, itemAttribute: axis.attribute, relation: .equal, target: layoutGuide, targetAttribute: axis.attribute)
            return makePrioritizer(for: endorse(constraint))
        }
        
        // MARK: - Private
        
        private func endorse(_ constraint: LayoutConstraint) -> LayoutConstraint {
            container.add(constraint)
            return constraint
        }
        
        private func makePrioritizer(for constraint: LayoutConstraint) -> ConstraintPrioritizer {
            DefaultLayoutResult(constraint: constraint, invoker: invoker, container: container)
        }
        
    }
    
}
