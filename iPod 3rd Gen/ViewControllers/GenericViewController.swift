//
//  GenericViewController.swift
//  iPod 3rd Gen
//
//  Created by Matthew Lock on 30/09/2023.
//

import UIKit

class GenericViewController<T: UIView>: UIViewController {

    public var rootView: T { return view as! T }
    
    override open func loadView() {
        self.view = T()
    }
    
}
