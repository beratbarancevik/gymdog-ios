//
//  BaseInteractor.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

protocol BaseInteractor {
    associatedtype T
    var presenter: T { get }
}
