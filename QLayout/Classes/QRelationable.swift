//
//  QRelationable.swift
//  QLayout
//
//  Created by Jose Quintero on 11/19/17.
//  Copyright © 2017 Jose Quintero. All rights reserved.
//

import Foundation
import UIKit

public protocol QRelationable { var isRelationable: Bool { get } }

extension UIView: QRelationable {
    public var isRelationable: Bool {
        return true
    }
}
extension CGFloat: QRelationable {
    public var isRelationable: Bool {
        return true
    }
}
