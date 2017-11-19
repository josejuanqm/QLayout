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
        
        let newView = UIView()
        newView.backgroundColor = .black
        view.addSubview(newView)
        newView.layout.left.top.equalTo(20)
        newView.layout.bottom.right.equalTo(-20)
        let secondView = UIView()
        
        view.addSubview(secondView)
        secondView.backgroundColor = .yellow
        secondView.layout.left.top.equalTo(newView)
        secondView.layout.bottom.right.equalTo(-100)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

