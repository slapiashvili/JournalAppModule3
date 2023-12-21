//
//  NewsList.swift
//  Journal
//
//  Created by Salome Lapiashvili on 21.12.23.
//

import SwiftUI

struct NewsList: View {
    @ObservedObject var viewModel: JournalViewModel
    //MARK: -body:
    var body: some View {
        List {
            ForEach(viewModel.entries) { entry in
                NavigationLink(destination: Text(entry.description)) {
                    if entry.title.isEmpty && entry.description.isEmpty {
                        Text("This entry is empty")
                            .foregroundColor(Color("journal.minitext"))
                    } else {
                        Text(entry.title.isEmpty ? "Untitled" : entry.title)
                    }
                }
                .listRowBackground(Color("journal.row"))
            }
            .onDelete { indexSet in
                viewModel.deleteEntry(at: indexSet)
            }
            .onMove { indices, newOffset in
                viewModel.move(from: indices, to: newOffset)
            }
        }
        .listStyle(PlainListStyle())
        .navigationBarItems(trailing: EditButton())
        .background(Color("journal.background"))
        .cornerRadius(10)
        .padding(20)
    }
}


