//
//  DefaultConstraintsContainer.swift
//  
//
//  Created by jaki on 11/09/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

final class DefaultConstraintsContainer: ConstraintsContainer {
    
    // MARK: - Properties
    
    private var constraintPrototypes: [LayoutConstraint] = []
    
    // MARK: - ConstraintsContainer
    
    func add(_ constraint: LayoutConstraint) {
        constraintPrototypes.append(constraint)
    }
    
    func makeConstraint(for prototype: LayoutConstraint) -> NSLayoutConstraint {
        constraintPrototypes.removeAll(where: { suspect in suspect === prototype })
        return NSLayoutConstraint(wrapping: prototype)
    }
    
    func activate() {
        let constraints = constraintPrototypes.map { prototype in NSLayoutConstraint(wrapping: prototype) }
        NSLayoutConstraint.activate(constraints)
        constraintPrototypes.removeAll()
    }
    
}
