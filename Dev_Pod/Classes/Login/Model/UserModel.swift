//
//  User.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/03/27.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

public struct UserModel: UserModelProtocol {
    public var firstName: String
    public var lastName: String
    public var email: String
    public var password: String

    public func getEmail() -> String {
        return self.email
    }

    public func addUser(with firstName: String, lastName: String, email: String,
                        and password: String, complete: @escaping ( _ error: String) -> Void) {
        var errorMessage = ""
        Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
            //Check for errors
            if err != nil {
                //There was an error creating the user
                errorMessage = "Error creating user"
                complete(errorMessage)
            } else {
                //User was created successfully, now store the first name and last name
                let database = Firestore.firestore()
                database.collection("users").addDocument(data: ["firstname": firstName,
                                                                "lastname": lastName,
                                                                "uid": result!.user.uid]) { (error) in
                                                                    //if not nil then there was an error
                                                                    //with creating first name and last name
                                                                    if error != nil {
                                                                        //Show error message
                                                                        errorMessage = error!.localizedDescription
                                                                        complete(errorMessage)
                                                                    } else {
                                                                        errorMessage = ""
                                                                        complete(errorMessage)
                                                                    }
                }
            }
        }
    }

    public func loginUser(with email: String, and password: String, complete: @escaping ( _ error: String) -> Void) {
        var errorMessage = ""
        Auth.auth().signIn(withEmail: email, password: password) { ( _, error) in
            //Check for errors
                if error != nil {
                    //Cannot sign in
                    errorMessage = error!.localizedDescription
                    complete(errorMessage)
                } else {
                    errorMessage = ""
                    complete(errorMessage)
            }
        }
    }
    public init(firstName: String, lastName: String, email: String, password: String) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.password = password;
    }
}
