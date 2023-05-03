//
//  ViewController.swift
//  Homework 3.1
//
//  Created by Юлия Ястребова on 02.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var animatedView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var runButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func runButtonPressed(_ sender: SpringButton) {
    }
    
}

