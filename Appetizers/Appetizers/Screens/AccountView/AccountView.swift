//
//  AccountView.swift
//  Appetizers
//
//  Created by Pedro Boga on 29/08/22.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthdate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefils = false
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("E-mail", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)
                    
                    Button {
                        //
                    } label: {
                        Text("Save changes")
                    }

                } header: {
                    Text("Personal Info")
                }
                Section {
                    Group {
                        Toggle("Extra Napkins", isOn: $extraNapkins)
                        Toggle("Frequent Refils", isOn: $frequentRefils)
                    }
                    .tint(Color("brandPrimary"))
                } header: {
                    Text("Request")
                }
            }
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
