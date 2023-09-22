//
//  ViewController.swift
//  iPod 3rd Gen
//
//  Created by Matthew Lock on 14/09/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        view.backgroundColor = .black

        let iPodOutlineView = RoundedRectangle()
        self.view.addSubview(iPodOutlineView)
        iPodOutlineView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            iPodOutlineView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            iPodOutlineView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            iPodOutlineView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            iPodOutlineView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        let lcdView = LCDDisplay()
        self.view.addSubview(lcdView)
        lcdView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lcdView.leadingAnchor.constraint(equalTo: iPodOutlineView.leadingAnchor, constant: 60),
            lcdView.trailingAnchor.constraint(equalTo: iPodOutlineView.trailingAnchor, constant: -60),
            lcdView.topAnchor.constraint(equalTo: iPodOutlineView.topAnchor, constant: 70),
            lcdView.heightAnchor.constraint(equalToConstant: 230)
        ])
        
        let clickWheelView = ClickWheel()
        self.view.addSubview(clickWheelView)
            clickWheelView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            clickWheelView.leadingAnchor.constraint(equalTo: iPodOutlineView.leadingAnchor, constant: 60),
            clickWheelView.trailingAnchor.constraint(equalTo: iPodOutlineView.trailingAnchor, constant: -60),
            clickWheelView.bottomAnchor.constraint(equalTo: iPodOutlineView.bottomAnchor, constant: -70),
            clickWheelView.heightAnchor.constraint(equalToConstant: 280)
        ])
        
        let clickWheelButtonView = ClickWheelButton()
        self.view.addSubview(clickWheelButtonView)
            clickWheelButtonView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            clickWheelButtonView.leadingAnchor.constraint(equalTo: clickWheelView.leadingAnchor, constant: 82),
            clickWheelButtonView.trailingAnchor.constraint(equalTo: clickWheelView.trailingAnchor, constant: -82),
            clickWheelButtonView.centerXAnchor.constraint(equalTo: clickWheelView.centerXAnchor),
            clickWheelButtonView.centerYAnchor.constraint(equalTo: clickWheelView.centerYAnchor),
            clickWheelButtonView.heightAnchor.constraint(equalToConstant: 105),
        ])
        
        let backButton = ActionButton()
        self.view.addSubview(backButton)
        let menuButton = ActionButton()
        self.view.addSubview(menuButton)
        let playButton = ActionButton()
        self.view.addSubview(playButton)
        let forwardButton = ActionButton()
        self.view.addSubview(forwardButton)
        
            backButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backButton.leadingAnchor.constraint(equalTo: iPodOutlineView.leadingAnchor, constant: 26),
            backButton.topAnchor.constraint(equalTo: lcdView.bottomAnchor, constant: 40),
            backButton.heightAnchor.constraint(equalToConstant: 70),
            backButton.widthAnchor.constraint(equalToConstant: 70)
        ])
        
            menuButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            menuButton.leadingAnchor.constraint(equalTo: backButton.trailingAnchor, constant: 20),
            menuButton.topAnchor.constraint(equalTo: lcdView.bottomAnchor, constant: 40),
            menuButton.heightAnchor.constraint(equalToConstant: 70),
            menuButton.widthAnchor.constraint(equalToConstant: 70)
        ])
        
            playButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playButton.leadingAnchor.constraint(equalTo: menuButton.trailingAnchor, constant: 20),
            playButton.topAnchor.constraint(equalTo: lcdView.bottomAnchor, constant: 40),
            playButton.heightAnchor.constraint(equalToConstant: 70),
            playButton.widthAnchor.constraint(equalToConstant: 70)
        ])
        
            forwardButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            forwardButton.trailingAnchor.constraint(equalTo: iPodOutlineView.trailingAnchor, constant: -26),
            forwardButton.topAnchor.constraint(equalTo: lcdView.bottomAnchor, constant: 40),
            forwardButton.heightAnchor.constraint(equalToConstant: 70),
            forwardButton.widthAnchor.constraint(equalToConstant: 70)
        ])
    }

}

