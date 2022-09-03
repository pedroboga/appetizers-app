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
}
