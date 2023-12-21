//
//  Model.swift
//  Journal
//
//  Created by Salome Lapiashvili on 21.12.23.
//

import SwiftUI

struct JournalEntry: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var date: Date
}
