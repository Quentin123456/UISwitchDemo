//
//  ViewController.swift
//  UISwitchSwift
//
//  Created by ChuangLan on 2019/12/13.
//  Copyright © 2019 QuentinZang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
           let rect = CGRect(x: 130, y: 100, width: 0, height: 0);
           let uiSwitch = UISwitch(frame: rect)
           uiSwitch.tintColor = .red
           uiSwitch.thumbTintColor = .purple
           uiSwitch.onTintColor = .orange
           uiSwitch.setOn(true, animated: true)
           uiSwitch.addTarget(self, action: #selector(ViewController.switchChanged(_:)), for: .valueChanged)
           self.view.addSubview(uiSwitch)
       }

       @objc func switchChanged(_ uiSwitch:UISwitch) {
           var message = "Turn on the switch."
           if !uiSwitch.isOn {
               message = "Turn off the switch."
           }
               print(message)
       }


    @IBAction func switchChangeTap(_ sender: UISwitch) {
        var message = "Turn on the switch."
                  if !sender.isOn {
                      message = "Turn off the switch."
                  }
                      print(message)
    }
    
}

