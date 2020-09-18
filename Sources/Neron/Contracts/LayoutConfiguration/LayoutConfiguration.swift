//
//  LayoutConfiguration.swift
//
//
//  Created by jaki on 08/09/2020.
//

#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

public protocol LayoutConfiguration: Layout {
    
    // MARK: - API
    
    #if canImport(UIKit)
    
    @discardableResult
    func add(to parent: UIView) -> Self
    
    #else
    
    @discardableResult
    func add(to parent: NSView) -> Self
    
    #endif
    
}
