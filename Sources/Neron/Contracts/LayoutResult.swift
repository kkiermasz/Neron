//
//  LayoutResult.swift
//  
//
//  Created by jaki on 13/08/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

public protocol LayoutResult: Layout {
    
    // MARK: - Properties
    
    /// Added constraint
    var constraint: NSLayoutConstraint { get }
    
}
