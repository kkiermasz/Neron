//
//  AxisLayout.swift
//
//
//  Created by jaki on 13/08/2020.
//

#if canImport(UIKit)
import UIKit
public protocol AxisLayout {
    
    @discardableResult
    func center(with sibling: UIView) -> LayoutResult
    
    @discardableResult
    func center(with layoutGuide: UILayoutGuide) -> LayoutResult
    
}

#else

import AppKit
public protocol AxisLayout {
    
    @discardableResult
    func center(with sibling: NSView) -> LayoutResult
    
    @discardableResult
    func center(with layoutGuide: NSLayoutGuide) -> LayoutResult
    
}
#endif
