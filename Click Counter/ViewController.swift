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
    var label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()

        // label
        let label = UILabel()
        // button
        let button = UIButton()
        createFormatter(label: label, button: button)
    }
    

    func createFormatter(label:UILabel, button:UIButton) {
    
        label.frame = CGRect(x: 200, y: 200, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        button.frame = CGRect(x: 150, y: 300, width: 100, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
    }
    
    
    @objc func incrementCount()   {
        self.count += 1
        self.label.text = "\(self.count)"
    }


}

