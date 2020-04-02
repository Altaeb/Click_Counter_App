//
//  ViewController.swift
//  Click Counter
//
//  Created by Abdalfattah Altaeb on 4/2/20.
//  Copyright © 2020 Abdalfattah Altaeb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createFormatter()
    }
    
    // label
    let label = UILabel()
    // button
    let button = UIButton()
    
    func createFormatter() {
    
        label.frame = CGRect(x: 200, y: 200, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        
        button.frame = CGRect(x: 150, y: 300, width: 100, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
    }
    



}

