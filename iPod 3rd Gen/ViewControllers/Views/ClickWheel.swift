//
//  ClickWheel.swift
//  iPod 3rd Gen
//
//  Created by Matthew Lock on 19/09/2023.
//

import UIKit

class ClickWheel: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(named: "Base")
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let path = UIBezierPath(ovalIn: rect)
        UIColor(named: "Base")!.setFill()
        UIColor(named: "Shadow")!.setStroke()
        path.lineWidth = 3
        path.stroke()
        path.fill()
    }
    

}
