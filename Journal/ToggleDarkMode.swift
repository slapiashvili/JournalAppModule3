//
//  ToggleDarkMode.swift
//  Journal
//
//  Created by Salome Lapiashvili on 21.12.23.
//

import SwiftUI

struct ToggleDarkModeButton: View {
    @ObservedObject var viewModel: JournalViewModel
    var body: some View {
        Button(action: {
            viewModel.toggleDarkMode()
        }) {
            Text("Switch Mode")
            .foregroundColor(Color("journal.largetext"))
        }
        .padding()
    }
}
