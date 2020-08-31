//
//  File.swift
//  
//
//  Created by jaki on 13/08/2020.
//

import UIKit

protocol LayoutInvoker: AnyObject, Layout {
    
    // MARK: - API
    
    func activate()
    func endorse(_ constraint: NSLayoutConstraint)
    
    func add(subviews: [UIView])
    
}
