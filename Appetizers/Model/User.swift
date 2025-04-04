//
//  User.swift
//  Appetizers
//
//  Created by Andrew Chong on 4/4/25.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
