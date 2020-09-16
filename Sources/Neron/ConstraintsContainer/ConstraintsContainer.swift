//
//  ConstraintsContainer.swift
//  
//
//  Created by jaki on 11/09/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

protocol ConstraintsContainer {
    
    // MARK: - API
    
    func add(_ constraint: LayoutConstraint)
    func makeConstraint(for prototype: LayoutConstraint) -> NSLayoutConstraint
    func activate()
    
}
