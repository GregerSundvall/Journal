//
//  JournalEntry.swift
//  Journal
//
//  Created by Greger Sundvall on 2021-01-22.
//

import Foundation

struct JournalEntry: Identifiable {
    var id = UUID()
    var content: String
    var date: Date = Date()
    
}
