//
//  UserProtocol.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/03/30.
//

import Foundation

public protocol UserModelProtocol {
    func addUser(with firstName: String, lastName: String,
                 email: String, and password: String, complete: @escaping ( _ error: String) -> Void)
    func loginUser(with email: String, and password: String,
                   complete: @escaping ( _ error: String) -> Void)
}
