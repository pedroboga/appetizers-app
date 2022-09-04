//
//  User.swift
//  Appetizers
//
//  Created by Pedro Boga on 04/09/22.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefils = false
}
