//
//  Alert.swift
//  Appetizers
//
//  Created by Pedro Boga on 03/09/22.
//

import SwiftUI

struct AlertItem : Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    //MARK: Network alerts
    static let invalidData = AlertItem(title: Text("Server error"),
                                              message: Text("Data received from the server is invalid."),
                                              dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title: Text("Server error"),
                                              message: Text("Invalid response from the server."),
                                              dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem(title: Text("Server error"),
                                              message: Text("An issue occurred connecting with the server."),
                                              dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Server error"),
                                              message: Text("Unable to complete your request."),
                                              dismissButton: .default(Text("OK")))
    
    //MARK: Account alerts
    static let invalidForm = AlertItem(title: Text("Empty field"),
                                      message: Text("You need to fill all the fields before continuing"),
                                      dismissButton: .default(Text("OK")))
    static let invalidEmail = AlertItem(title: Text("Invalid e-mail"),
                                        message: Text("You need to input a valid e-mail"),
                                        dismissButton: .default(Text("OK")))
    
    //MARK: User alerts
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                      message: Text("You successfully saved your profile"),
                                      dismissButton: .default(Text("OK")))
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                      message: Text("There was an error saving/retrieving your data"),
                                      dismissButton: .default(Text("OK")))
}
