//
//  View+Layout.swift
//  
//
//  Created by jaki on 14/08/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

extension View {
    
    public var layout: ViewLayoutConfiguration { ViewLayout(of: self) }
    
}
