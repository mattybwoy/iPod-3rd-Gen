//
//  ViewController.swift
//  iPod 3rd Gen
//
//  Created by Matthew Lock on 14/09/2023.
//

import UIKit

class ViewController: GenericViewController <MainView> {
    
    override func viewDidLoad() { }
    
    override func loadView() {
        self.view = MainView()
    }
    
    override func viewDidLayoutSubviews() {
        rootView.backButton.makeRound()
        rootView.menuButton.makeRound()
        rootView.playButton.makeRound()
        rootView.forwardButton.makeRound()
    }
}
