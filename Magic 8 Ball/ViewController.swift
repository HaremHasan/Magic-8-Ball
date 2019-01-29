//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Harem Hasan on 1/17/19.
//  Copyright © 2019 Harem Hasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 1. دروست كردنی array ه‌ك بۆ هه‌موو وێنه‌كان به‌ناوه‌كانی خۆیان//
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    // 2.مادام ئێمه‌ ده‌مانه‌وێت به‌ شێوه‌یه‌كی هه‌ره‌مه‌كی پیشانیان بدات randomBallNumber ده‌ناسێنین//
    var randomBallNumber: Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage(){
        // 3. ئه‌م دوو دێره‌مان سه‌ره‌تا له‌ ژێر override func viewDidLoad() دا نووسی پاشان ئه‌م فه‌نكشنه‌مان دروست كردو خستمانه‌ ئێره‌وه‌ بۆ ئه‌وه‌ی هه‌موو جارێك دووباره‌ نه‌ینوسینه‌وه‌. پاشان بردمانه‌وه‌ بۆ هه‌ردوو func ه‌كه‌ی سه‌روو تر داماننا بۆ ئه‌وه‌ی كه‌ ده‌ستمان به‌ ask نا له‌به‌رنامه‌كه‌دا یه‌كسه‌ر ڕه‌سمه‌كان به‌ هه‌ڕه‌مه‌كی پیشان بدات. وه‌ له‌ func ی سه‌روو تریشدا داماننا بۆ ئه‌وه‌ی كه‌ به‌رنامه‌كه‌مان كرده‌وه‌ یه‌كسه‌ر یه‌كێك له‌ وێنه‌كان به‌شێوه‌یه‌كی هه‌ڕه‌مه‌كی بێته‌ سه‌ر شاشه‌كه‌ له‌كاتی كردنه‌وه‌ی به‌رنامه‌كه‌دا. چونكه‌ ئه‌گه‌ر ئه‌وه‌مان نه‌كردایه‌ به‌رنامه‌كه‌ هه‌ر ئیشی ده‌كرد به‌ڵام كه‌ده‌مانكرده‌وه‌ هیچ وێنه‌یه‌كی نیشان نه‌ده‌دا هه‌تا ده‌ستمان ده‌نا به‌ ask دا به‌ڵام كه‌ له‌و func ه‌دا داماننا ئێستا هه‌ر كه‌ به‌رنامه‌كه‌ ده‌كه‌ینه‌وه‌ یه‌كسه‌ر یه‌كێك له‌ وێنه‌كان به‌شێوه‌یه‌كی هه‌ڕه‌مه‌كی نیشان ده‌دات
        
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    // بۆ ئه‌وه‌ی به‌ له‌رزاندنی ئایفۆنه‌كه‌ت وه‌ڵامێكی هه‌ڕه‌مه‌كیت بداتێ ئه‌م func ه‌ دروست ده‌كه‌ین واته‌ بۆ shake
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

