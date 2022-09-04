//
//  AccountView.swift
//  Appetizers
//
//  Created by Pedro Boga on 29/08/22.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("E-mail", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save changes")
                    }

                } header: {
                    Text("Personal Info")
                }
                Section {
                    Group {
                        Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                        Toggle("Frequent Refils", isOn: $viewModel.user.frequentRefils)
                    }
                    .tint(Color("brandPrimary"))
                } header: {
                    Text("Request")
                }
            }
            .navigationTitle("Account")
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
