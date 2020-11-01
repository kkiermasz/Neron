//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

extension View {
    
    public var layout: ViewLayoutConfiguration { ViewLayout(of: self) }
    
}
