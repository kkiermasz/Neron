//
//  ViewLayoutConfiguration.swift
//
//
//  Created by jaki on 08/09/2020.
//

#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

public protocol ViewLayoutConfiguration: LayoutConfiguration {
    
    // MARK: - API
    
    #if canImport(UIKit)
    
    @discardableResult
    func add(subviews: UIView...) -> ViewLayoutConfiguration
    
    #else
    
    @discardableResult
    func add(subviews: NSView...) -> ViewLayoutConfiguration
    
    #endif
    
}
