//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
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
