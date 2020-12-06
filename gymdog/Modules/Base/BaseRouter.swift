//
//  BaseRouter.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

protocol BaseRouter {
    associatedtype T
    var controller: T { get }
}
