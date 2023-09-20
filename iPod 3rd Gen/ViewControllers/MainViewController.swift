//
//  ViewController.swift
//  iPod 3rd Gen
//
//  Created by Matthew Lock on 14/09/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        let iPodOutlineView = RoundedRectangle(frame: CGRect(x: 0, y: self.view.frame.height - 800, width: 390, height: 800))
        let clickWheelView = ClickWheel(frame: CGRect(x: 60, y: self.view.frame.height / 1.7, width: 280, height: 280))
        let lcdView = LCDDisplay(frame: CGRect(x: 60, y: 100, width: 280, height: 250))
        self.view.addSubview(iPodOutlineView)
        self.view.addSubview(clickWheelView)
        self.view.addSubview(lcdView)
    }
    

}

