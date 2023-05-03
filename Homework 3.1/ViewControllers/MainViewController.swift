//
//  ViewController.swift
//  Homework 3.1
//
//  Created by Юлия Ястребова on 02.05.2023.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {
    
    private var randomAnimation = Animation.getAnimation()
    
    @IBOutlet var animatedView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var runButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()
    }
    
    @IBAction func runButtonPressed(_ sender: SpringButton) {
        setRandomAnimation()
        setLabelText()
        
        randomAnimation = Animation.getAnimation()
        sender.setTitle("Run \(randomAnimation.preset)", for: .normal)
    }
}

// MARK: - Private Methods
extension MainViewController {
    private func setLabelText() {
        presetLabel.text = "preset: \(randomAnimation.preset)"
        curveLabel.text = "curve: \(randomAnimation.curve)"
        forceLabel.text = "force: \(String(format: "%.2f", randomAnimation.force))"
        durationLabel.text = "duration: \(String(format: "%.2f", randomAnimation.duration))"
        delayLabel.text = "delay: \(randomAnimation.delay)"
    }
    
    private func setRandomAnimation() {
        animatedView.animation = randomAnimation.preset
        animatedView.curve = randomAnimation.curve
        animatedView.force = randomAnimation.force
        animatedView.duration = randomAnimation.duration
        animatedView.delay = randomAnimation.delay
        animatedView.animate()
    }
}
