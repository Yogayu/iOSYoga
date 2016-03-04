//
//  ViewController.swift
//  NoiseMaker
//
//  Created by youxinyu on 15/10/7.
//  Copyright © 2015年 yogayu.github.io. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    let noiseMaker = NoiseMaker()
    @IBAction func playGuitar(sender: UIButton) {
       noiseMaker.playGuitarSound()
    }

    @IBAction func playApplause(sender: UIButton) {
        noiseMaker.playApplauseSound()
    }

    @IBAction func playMonster(sender: UIButton) {
        noiseMaker.playMonsterSound()
    }

    @IBAction func playBubbles(sender: UIButton) {
        noiseMaker.playBubblesSound()
    }
}

