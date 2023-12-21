//
//  ViewModel.swift
//  Journal
//
//  Created by Salome Lapiashvili on 21.12.23.
//

import SwiftUI

class JournalViewModel: ObservableObject {
    //MARK: -Properties:
    @Published var entries: [JournalEntry] = []
    @Published var newEntryTitle = ""
    @Published var newEntryDescription = ""
    @Published var selectedDate = Date()
    @Published var isDarkMode = false

    //MARK: -methods:
    func saveEntry() {
        let newEntry = JournalEntry(title: newEntryTitle, description: newEntryDescription, date: selectedDate)
        entries.append(newEntry)
        
        newEntryTitle = ""
        newEntryDescription = ""
        selectedDate = Date()
    }
    
    func deleteEntry(at indexSet: IndexSet) {
        entries.remove(atOffsets: indexSet)
    }
    
    func move(from indices: IndexSet, to newOffset: Int) {
        entries.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func toggleDarkMode() {
        isDarkMode.toggle()
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            for window in windowScene.windows {
                window.overrideUserInterfaceStyle = isDarkMode ? .dark : .light
            }
        }
    }
}
