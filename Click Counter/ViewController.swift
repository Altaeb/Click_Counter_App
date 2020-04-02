//
//  ViewController.swift
//  Click Counter
//
//  Created by Abdalfattah Altaeb on 4/2/20.
//  Copyright © 2020 Abdalfattah Altaeb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var label1 = UILabel()
    var label2 = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()

        // label
        let label1 = UILabel()
        let label2 = UILabel()
        // button
        let button = UIButton()
        createFormatter(label1: label1, label2: label2, button: button)
    }
    

    func createFormatter(label1:UILabel,label2:UILabel, button:UIButton) {
    
        label1.frame = CGRect(x: 150, y: 200, width: 60, height: 60)
        label1.text = "0"
        view.addSubview(label1)
        self.label1 = label1
        
        label2.frame = CGRect(x: 250, y: 200, width: 60, height: 60)
        label2.text = "0"
        view.addSubview(label2)
        self.label2 = label2
        
        button.frame = CGRect(x: 150, y: 300, width: 100, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
    }
    
    
    @objc func incrementCount()   {
        self.count += 1
        self.label1.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }


}

