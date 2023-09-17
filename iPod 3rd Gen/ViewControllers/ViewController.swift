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
        let myView = RoundedRectangle(frame: CGRect(x: 0, y: 50, width: 390, height: 800))
        self.view.addSubview(myView)
    }
    

}

