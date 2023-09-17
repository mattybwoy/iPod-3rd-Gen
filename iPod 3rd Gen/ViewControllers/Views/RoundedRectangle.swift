//
//  RoundedRectangle.swift
//  iPod 3rd Gen
//
//  Created by Matthew Lock on 17/09/2023.
//

import UIKit

class RoundedRectangle: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
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
            byRoundingCorners: [.topLeft, .topRight],
            cornerRadii: CGSize(width: 20, height: 20)
            
        )
        UIColor(named: "StandardBackground")!.setFill()
        path.fill()
        context.addPath(path.cgPath)
        context.closePath()
    }
    
    
}
