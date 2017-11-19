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
    
    var attributeValue: Int {
        switch self {
        case .edges:
            return -1
        case .left:
            return NSLayoutAttribute.left.rawValue
        case .top:
            return NSLayoutAttribute.top.rawValue
        case .right:
            return NSLayoutAttribute.right.rawValue
        case .bottom:
            return NSLayoutAttribute.bottom.rawValue
        case .width:
            return NSLayoutAttribute.width.rawValue
        case .height:
            return NSLayoutAttribute.height.rawValue
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
    
    var type: QLayoutRelationType!
    
    private init(_ type: QLayoutRelationType) {
        self.type = type
    }
}
