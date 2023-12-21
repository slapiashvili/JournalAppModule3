//
//  JournalEntryForm.swift
//  Journal
//
//  Created by Salome Lapiashvili on 21.12.23.
//

import SwiftUI

struct JournalEntryForm: View {
    @ObservedObject var viewModel: JournalViewModel
    //MARK: -body:
    var body: some View {
        Form {
            Section(header:
                Text("New Journal Entry")
                    .foregroundColor(Color("journal.largetext"))
            ) {
                TextField("Title", text: $viewModel.newEntryTitle)
                    .foregroundColor(Color("journal.largetext"))
                TextEditor(text: $viewModel.newEntryDescription)
                    .foregroundColor(Color("journal.minitext"))
        
                DatePicker("Date", selection: $viewModel.selectedDate, displayedComponents: .date)
                    .foregroundColor(Color("journal.largetext"))
                    .cornerRadius(10)
            }    .listRowBackground(Color("journal.row"))

    
            Section {
                Button("Save News") {
                    viewModel.saveEntry()
                }
                .foregroundColor(Color("journal.largetext"))
                .padding(10)
                .background(Color("journal.buttonBackground"))
                .cornerRadius(10)
            }.listRowBackground(Color("journal.row"))
        }
        .tint(.purple)
        .background(Color("journal.background"))
        .scrollContentBackground(.hidden)
    }
}


