//
//  BasePresenter.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

protocol BasePresenter {
    associatedtype T
    var controller: T { get }
}
