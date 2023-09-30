//
//  LCDDisplay.swift
//  iPod 3rd Gen
//
//  Created by Matthew Lock on 20/09/2023.
//

import UIKit

class LCDDisplay: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(named: "Base")
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.saveGState()
        defer { context.restoreGState() }
        
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: .allCorners,
            cornerRadii: CGSize(width: 10, height: 10)
        )
        
        UIColor(named: "StandardBackground")!.setFill()
        path.fill()
        context.addPath(path.cgPath)
        context.closePath()
    }
    
    
}
