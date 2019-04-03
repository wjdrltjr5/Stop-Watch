//
//  ViewController.swift
//  Stop Watch 01
//
//  Created by dit08 on 2019. 4. 3..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var count = 0
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = String(count)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func startBtnPressed(_ sender: Any) {
        if !myTimer.isValid {  //true 이면 작동 false 이면 작동불가능
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            
        }
        print(myTimer.isValid)
    }
    
    @IBAction func pauseBtnPressed(_ sender: Any) {
    myTimer.invalidate()
    }
    @IBAction func stopBtnPressed(_ sender: Any) {
    myTimer.invalidate()
    count = 0
    timeLabel.text = String(count)
    print(myTimer.isValid)
    }//변수는 소문자부터
    @objc func updateTime(){
        count+=1
        timeLabel.text = String(count)
    }
}

