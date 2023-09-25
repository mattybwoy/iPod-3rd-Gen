//
//  ViewController.swift
//  iPod 3rd Gen
//
//  Created by Matthew Lock on 14/09/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let backButton = UIButton()
    let menuButton = UIButton()
    let playButton = UIButton()
    let forwardButton = UIButton()
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        makeButtonRounded()
        
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
        
        self.view.addSubview(menuButton)
        self.view.addSubview(playButton)
        self.view.addSubview(forwardButton)
        self.view.addSubview(backButton)
        
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
    
    private func makeButtonRounded() {
        backButton.layer.borderColor = UIColor(named: "Shadow")?.cgColor
        backButton.layer.borderWidth = 1.5
        backButton.layer.masksToBounds = true
        var backConfig = UIButton.Configuration.plain()
        backConfig.image = UIImage(systemName: "backward.end.alt.fill", withConfiguration: UIImage.SymbolConfiguration(scale: .small))
        backButton.configuration = backConfig
        backButton.tintColor = UIColor(named: "ButtonStandard")
        
        menuButton.layer.borderColor = UIColor(named: "Shadow")?.cgColor
        menuButton.layer.borderWidth = 1.5
        menuButton.layer.masksToBounds = true
        menuButton.setTitle("MENU", for: .normal)
        menuButton.titleLabel?.font = .systemFont(ofSize: 13.0, weight: .bold)
        menuButton.setTitleColor(UIColor(named: "ButtonStandard"), for: .normal)
        menuButton.tintColor = UIColor(named: "ButtonStandard")
        
        playButton.layer.borderColor = UIColor(named: "Shadow")?.cgColor
        playButton.layer.borderWidth = 1.5
        playButton.layer.masksToBounds = true
        var playConfig = UIButton.Configuration.plain()
        playConfig.image = UIImage(systemName: "playpause.fill", withConfiguration: UIImage.SymbolConfiguration(scale: .small))
        playButton.configuration = playConfig
        playButton.tintColor = UIColor(named: "ButtonStandard")
        
        forwardButton.layer.borderColor = UIColor(named: "Shadow")?.cgColor
        forwardButton.layer.borderWidth = 1.5
        forwardButton.layer.masksToBounds = true
        var forwardConfig = UIButton.Configuration.plain()
        forwardConfig.image = UIImage(systemName: "forward.end.alt.fill", withConfiguration: UIImage.SymbolConfiguration(scale: .small))
        forwardButton.configuration = forwardConfig
        forwardButton.tintColor = UIColor(named: "ButtonStandard")
    }
    
    override func viewDidLayoutSubviews() {
        backButton.layer.cornerRadius = 0.5 * backButton.bounds.size.width
        menuButton.layer.cornerRadius = 0.5 * menuButton.bounds.size.width
        playButton.layer.cornerRadius = 0.5 * playButton.bounds.size.width
        forwardButton.layer.cornerRadius = 0.5 * forwardButton.bounds.size.width
    }
}

