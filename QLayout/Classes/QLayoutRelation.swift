//
//  QLayoutRelation.swift
//  QLayout
//
//  Created by Jose Quintero on 11/19/17.
//  Copyright © 2017 Jose Quintero. All rights reserved.
//

import Foundation
import UIKit

enum QLayoutRelationType {
    case edges
    case left
    case top
    case right
    case bottom
    case width
    case height
    case center
    case centerX
    case centerY
    
    var attributeValue: Int {
        switch self {
        case .edges, .center:
            return -1
        case .centerY:
            return NSLayoutConstraint.Attribute.centerY.rawValue
        case .centerX:
            return NSLayoutConstraint.Attribute.centerX.rawValue
        case .left:
            return NSLayoutConstraint.Attribute.left.rawValue
        case .top:
            return NSLayoutConstraint.Attribute.top.rawValue
        case .right:
            return NSLayoutConstraint.Attribute.right.rawValue
        case .bottom:
            return NSLayoutConstraint.Attribute.bottom.rawValue
        case .width:
            return NSLayoutConstraint.Attribute.width.rawValue
        case .height:
            return NSLayoutConstraint.Attribute.height.rawValue
        }
    }
}

public class QLayoutRelation {
    static var edges: QLayoutRelation = QLayoutRelation(.edges)
    static var top: QLayoutRelation = QLayoutRelation(.top)
    static var left: QLayoutRelation = QLayoutRelation(.left)
    static var right: QLayoutRelation = QLayoutRelation(.right)
    static var bottom: QLayoutRelation = QLayoutRelation(.bottom)
    static var width: QLayoutRelation = QLayoutRelation(.width)
    static var height: QLayoutRelation = QLayoutRelation(.height)
    static var center: QLayoutRelation = QLayoutRelation(.center)
    static var centerX: QLayoutRelation = QLayoutRelation(.centerX)
    static var centerY: QLayoutRelation = QLayoutRelation(.centerY)
    
    var type: QLayoutRelationType!
    
    private init(_ type: QLayoutRelationType) {
        self.type = type
    }
}
