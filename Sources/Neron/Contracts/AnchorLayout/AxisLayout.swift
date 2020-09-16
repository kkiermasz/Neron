//
//  AxisLayout.swift
//  
//
//  Created by jaki on 13/08/2020.
//

import Foundation
#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

public protocol AxisLayout {
    
    @discardableResult
    func center(with sibling: View) -> LayoutResult
    
    @discardableResult
    func center(with layoutGuide: LayoutGuide) -> LayoutResult
    
}
