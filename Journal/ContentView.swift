//
//  ContentView.swift
//  Journal
//
//  Created by Salome Lapiashvili on 21.12.23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    //MARK: -properties:
    @StateObject private var viewModel = JournalViewModel()
    //MARK: -body:
    var body: some View {
        VStack {
            Text("Daily Journal")
                .foregroundColor(Color("journal.largetext"))
                .font(.largeTitle)
                .bold()

            JournalEntryForm(viewModel: viewModel)
            NewsList(viewModel: viewModel)
            ToggleDarkModeButton(viewModel: viewModel)
        }
        .background(Color("journal.background"))
    }
}


