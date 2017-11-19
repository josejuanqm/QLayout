//
//  QLayoutRelation.swift
//  QLayout
//
//  Created by Jose Quintero on 11/19/17.
//  Copyright © 2017 Jose Quintero. All rights reserved.
//

import Foundation
import UIKit

public typealias Relation = QRelation<QLayoutRelation>

public class QRelation<T: QLayoutRelation>: QLayoutRelationSet, QRelationable {
    public var isRelationable: Bool = true
    private var relation: T!
    
    init(with view: UIView, and relation: T, and prevRelations: [Relation] = []) {
        super.init()
        self.view = view
        self.relation = relation
        var relations = prevRelations
        relations.append(self as! Relation)
        self.prevRelations = relations
    }
    
    public func equalTo(_ value: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0) {
        addConstraints(for: value, multiplier: multiplier, constant: constant)
    }
    
    public func equalTo(_ relation: Relation, multiplier: CGFloat = 1, constant: CGFloat = 0) {
        addConstraints(for: relation, multiplier: multiplier, constant: constant)
    }
    
    public func equalTo(_ value: CGFloat, multiplier: CGFloat = 1) {
        addConstraints(for: value, multiplier: multiplier, constant: CGFloat.leastNonzeroMagnitude)
    }
    
    func addConstraints(for value: QRelationable, multiplier: CGFloat, constant: CGFloat) {
        for relationItem in prevRelations {
            guard let attribute = NSLayoutAttribute(rawValue: relationItem.relation.type.attributeValue) else {
                return
            }
            
            let const: CGFloat = (constant == CGFloat.leastNonzeroMagnitude ? (value as? CGFloat) : constant)!
            let subItem: UIView? = (value as? UIView)
            
            view.translatesAutoresizingMaskIntoConstraints = false
            
            if attribute.rawValue == -1 {
                view.superview?.addConstraints([
                    NSLayoutConstraint(item: view, attribute: .left, relatedBy: .equal, toItem: subItem, attribute: .left, multiplier: multiplier, constant: const),
                    NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: subItem, attribute: .top, multiplier: multiplier, constant: const),
                    NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: subItem, attribute: .bottom, multiplier: multiplier, constant: const),
                    NSLayoutConstraint(item: view, attribute: .right, relatedBy: .equal, toItem: subItem, attribute: .right, multiplier: multiplier, constant: const)
                ])
                return
            }
            
            view.superview?.addConstraint(
                NSLayoutConstraint(item: view, attribute: attribute, relatedBy: .equal, toItem: subItem ?? view.superview, attribute: attribute, multiplier: multiplier, constant: const)
            )
        }
    }
    
    func addConstraints(for relation: Relation, multiplier: CGFloat, constant: CGFloat) {
        for relationItem in prevRelations {
            guard let attribute = NSLayoutAttribute(rawValue: relationItem.relation.type.attributeValue) else {
                return
            }
            
            let subItem: UIView? = relation.view
            let subItemRelation: NSLayoutAttribute = NSLayoutAttribute(rawValue: relation.relation.type.attributeValue)!
            
            view.translatesAutoresizingMaskIntoConstraints = false
            
            if attribute.rawValue == -1 {
                return
            }
            
            view.superview?.addConstraint(
                NSLayoutConstraint(item: view, attribute: attribute, relatedBy: .equal, toItem: subItem, attribute: subItemRelation, multiplier: multiplier, constant: constant)
            )
        }
    }
    
}
