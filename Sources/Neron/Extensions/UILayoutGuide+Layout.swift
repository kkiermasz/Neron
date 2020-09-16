//
//  LayoutGuide+Layout.swift
//  
//
//  Created by jaki on 08/09/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

extension LayoutGuide {
    
    public var layout: LayoutConfiguration { LayoutGuideLayout(of: self) }
    
}
