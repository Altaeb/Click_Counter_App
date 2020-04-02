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

        // labels
        let label1 = UILabel()
        let label2 = UILabel()
        // buttons
        let incrementButton = UIButton()
        let decrementButton = UIButton()
        createFormatter(label1: label1, label2: label2,incrementButton: incrementButton, decrementButton: decrementButton)
    }
    

    func createFormatter(label1:UILabel,label2:UILabel, incrementButton:UIButton, decrementButton:UIButton) {
    
        label1.frame = CGRect(x: 150, y: 200, width: 60, height: 60)
        label1.text = "0"
        view.addSubview(label1)
        self.label1 = label1
        
        label2.frame = CGRect(x: 250, y: 200, width: 60, height: 60)
        label2.text = "0"
        view.addSubview(label2)
        self.label2 = label2
        
        incrementButton.frame = CGRect(x: 150, y: 300, width: 100, height: 60)
        incrementButton.setTitle("Increment", for: .normal)
        incrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(incrementButton)
        
        incrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        decrementButton.frame = CGRect(x: 150, y: 400, width: 100, height: 60)
        decrementButton.setTitle("Decrement", for: .normal)
        decrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(decrementButton)
        
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
    }
    
    
    @objc func incrementCount()   {
        self.count += 1
        self.label1.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        view.backgroundColor = UIColor.yellow
    }
    
    @objc func decrementCount()   {
        self.count -= 1
        self.label1.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        view.backgroundColor = UIColor.green
    }


}

