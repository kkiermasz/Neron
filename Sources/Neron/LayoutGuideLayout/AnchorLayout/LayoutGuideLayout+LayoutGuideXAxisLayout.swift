//
//  LayoutGuideLayout+LayoutGuideXAxisLayout.swift
//
//
//  Created by jaki on 08/09/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

extension LayoutGuideLayout {
    
    final class LayoutGuideXAxisLayout: XAxisLayout {
        
        // MARK: - Properties
        
        private let anchor: LayoutAnchor.XAxis
        private let layoutGuide: LayoutGuide
        private let invoker: Layout
        private let container: ConstraintsContainer
        
        // MARK: - Initialization
        
        init(for view: LayoutGuide, anchor: LayoutAnchor.XAxis, invoker: Layout, container: ConstraintsContainer) {
            self.layoutGuide = view
            self.anchor = anchor
            self.invoker = invoker
            self.container = container
        }
        
        // MARK: - XAxisLayout
        
        func equalTo(_ sibling: View, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier {
            let constraint = LayoutConstraint(item: layoutGuide, itemAttribute: self.anchor.attribute, relation: .equal, target: sibling, targetAttribute: anchor.attribute)
            return makePrioritizer(for: endorse(constraint))
        }
        
        func lessThanOrEqualTo(_ sibling: View, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier {
            let constraint = LayoutConstraint(item: layoutGuide,
                                              itemAttribute: self.anchor.attribute,
                                              relation: .lessThanOrEqual,
                                              target: sibling,
                                              targetAttribute: anchor.attribute)
            return makePrioritizer(for: endorse(constraint))
        }
        
        func greaterThanOrEqualTo(_ sibling: View, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier {
            let constraint = LayoutConstraint(item: layoutGuide,
                                              itemAttribute: self.anchor.attribute,
                                              relation: .greaterThanOrEqual,
                                              target: sibling,
                                              targetAttribute: anchor.attribute)
            return makePrioritizer(for: endorse(constraint))
        }
        
        func equalTo(_ layoutGuide: LayoutGuide, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier {
            let constraint = LayoutConstraint(item: layoutGuide, itemAttribute: self.anchor.attribute, relation: .equal, target: layoutGuide, targetAttribute: anchor.attribute)
            return makePrioritizer(for: endorse(constraint))
        }
        
        func lessThanOrEqualTo(_ layoutGuide: LayoutGuide, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier {
            let constraint = LayoutConstraint(item: layoutGuide,
                                              itemAttribute: self.anchor.attribute,
                                              relation: .lessThanOrEqual,
                                              target: layoutGuide,
                                              targetAttribute: anchor.attribute)
            return makePrioritizer(for: endorse(constraint))
        }
        
        func greaterThanOrEqualTo(_ layoutGuide: LayoutGuide, _ anchor: LayoutAnchor.XAxis) -> ConstraintMultiplier {
            let constraint = LayoutConstraint(item: layoutGuide,
                                              itemAttribute: self.anchor.attribute,
                                              relation: .greaterThanOrEqual,
                                              target: layoutGuide,
                                              targetAttribute: anchor.attribute)
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
