//
//  QLayout.swift
//  QLayout
//
//  Created by Jose Quintero on 11/19/17.
//  Copyright © 2017 Jose Quintero. All rights reserved.
//

import Foundation
import UIKit

public class QLayout: QLayoutRelationSet {
    
    init(with view: UIView) {
        super.init()
        self.view = view
    }
    
    func removeAllConstraints() {
        for constraint in view.constraints {
            view.removeConstraint(constraint)
        }
    }
    
}
