//
//  UserViewModel.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/03/27.
//

import Foundation
public struct UserViewModel {
    public func getEmail(with email: String, and password: String) -> String {
        let user = User(firstName: "", lastName: "", email: email, password: password)
        return user.getEmail()
    }

    public func addUser(with firstName: String, lastName: String, email: String,
                        and password: String, complete: @escaping ( _ error: String) -> Void) {
        let user = User(firstName: firstName, lastName: lastName, email: email, password: password)
        user.addUser(with: firstName, lastName: lastName, email: email, and: password) {(errorMessage) in
            complete(errorMessage)
        }
    }

    public func loginUser(with email: String, and password: String, complete: @escaping ( _ error: String) -> Void) {
        let user = User(firstName: "", lastName: "", email: email, password: password)
        user.loginUser(with: email, and: password) { ( errorMessage) in
            complete(errorMessage)
        }
    }
    public init() {}
}
