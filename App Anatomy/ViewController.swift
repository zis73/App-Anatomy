//
//  ViewController.swift
//  App Anatomy
//
//  Created by student on 28.09.2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var launchLabel: UILabel!
    
    @IBOutlet weak var resignLabel: UILabel!
    
    @IBOutlet weak var backgroundLabel: UILabel!
    
    @IBOutlet weak var foregroundLabel: UILabel!
    
    @IBOutlet weak var activeLabel: UILabel!
    
    @IBOutlet weak var terminateLabel: UILabel!
    
    var launchCounter = 0
    var resignCounter = 0
    var backgroundCounter = 0
    var foregroundCounter = 0
    var activeCounter = 0
    var terminateCounter = 0
    
    func updateView(){
        launchLabel.text = "didFinishLaunch: \(launchCounter)"
        resignLabel.text = "willResignActive\(resignCounter)"
        backgroundLabel.text = "didEnterBackground\(backgroundCounter)"
        foregroundLabel.text = "willEnteredForeground\(foregroundCounter)"
        activeLabel.text = "didBecomeActive\(activeCounter)"
        terminateLabel.text = "willTerminate\(terminateCounter)"
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateView()
    }

}

