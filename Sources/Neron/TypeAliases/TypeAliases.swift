//
//  TypeAliases.swift
//
//
//  Created by jaki on 10/09/2020.
//

import Foundation

#if canImport(UIKit)
    import UIKit
    public typealias View = UIView
    public typealias LayoutGuide = UILayoutGuide
    public typealias LayoutPriority = UILayoutPriority
#else
    import AppKit
    public typealias View = NSView
    public typealias LayoutGuide = NSLayoutGuide
    public typealias LayoutPriority = NSLayoutConstraint.Priority
#endif
