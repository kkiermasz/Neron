//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

extension LayoutGuide {
    
    public var layout: LayoutConfiguration { LayoutGuideLayout(of: self) }
    
}
