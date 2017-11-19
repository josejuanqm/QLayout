//
//  ViewController.swift
//  QLayout
//
//  Created by jose.juan.qm@gmail.com on 11/19/2017.
//  Copyright (c) 2017 jose.juan.qm@gmail.com. All rights reserved.
//

import UIKit
import QLayout

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let box = UIView()
        view.addSubview(box)
        box.backgroundColor = .yellow
        box.layout.center.equalTo(view)
        box.layout.width.height.equalTo(50)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

