//
//  QLayoutRelationSet.swift
//  QLayout
//
//  Created by Jose Quintero on 11/19/17.
//  Copyright © 2017 Jose Quintero. All rights reserved.
//

import Foundation
import UIKit

public protocol QLayoutRelationSetProtocol {
    var view: UIView! { get set }
    var prevRelations: [Relation]! { get set }
    var edges: Relation! { get }
    var left: Relation! { get }
    var right: Relation! { get }
    var top: Relation! { get }
    var bottom: Relation! { get }
    var width: Relation! { get }
    var height: Relation! { get }
    var center: Relation! { get }
    var centerY: Relation! { get }
    var centerX: Relation! { get }
}

public class QLayoutRelationSet: QLayoutRelationSetProtocol {
    public var edges: Relation! { return Relation(with: view, and: .edges, and: prevRelations) }
    public var left: Relation! { return Relation(with: view, and: .left, and: prevRelations) }
    public var right: Relation! { return Relation(with: view, and: .right, and: prevRelations) }
    public var top: Relation! { return Relation(with: view, and: .top, and: prevRelations) }
    public var bottom: Relation! { return Relation(with: view, and: .bottom, and: prevRelations) }
    public var width: Relation! { return Relation(with: view, and: .width, and: prevRelations) }
    public var height: Relation! { return Relation(with: view, and: .height, and: prevRelations) }
    public var center: Relation! { return Relation(with: view, and: .center, and: prevRelations) }
    public var centerY: Relation! { return Relation(with: view, and: .centerY, and: prevRelations) }
    public var centerX: Relation! { return Relation(with: view, and: .centerX, and: prevRelations) }
    
    public var prevRelations: [Relation]! = []
    public var view: UIView!
}
