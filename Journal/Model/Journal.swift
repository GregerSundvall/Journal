//
//  Journal.swift
//  Journal
//
//  Created by Greger Sundvall on 2021-01-22.
//

import Foundation


class Journal: ObservableObject {
    @Published var entries = [JournalEntry]()
    

    init() {
        addMockData()
    }
    
    func addMockData() {
        entries.append(JournalEntry(content: "Dag 1"))
        entries.append(JournalEntry(content: "Åt mat"))
        entries.append(JournalEntry(content: "Sov mest"))
        entries.append(JournalEntry(content: "Jobbade"))
        entries.append(JournalEntry(content: "Pluggade"))
        
    }
}
