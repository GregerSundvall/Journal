//
//  JournalEntryView.swift
//  Journal
//
//  Created by Greger Sundvall on 2021-01-26.
//

import SwiftUI

struct JournalEntryView: View {
    
    var entry: JournalEntry? = nil
    @State private var content: String = ""
    
    var date: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        var date = ""
        if let entry = entry {
            date = formatter.string(from: entry.date)
        }else{
            date = formatter.string(from: Date())
        }
        
        return date
    }
    
    var body: some View {
        Text(date)
        Spacer()
        TextEditor(text: $content).padding()
        Spacer()
            .navigationTitle(date)
            .navigationBarItems(trailing: Button("Save") {
                saveEntry()
            })
    }
    
    private func saveEntry() {
        
    }
}

struct JournalEntryView_Previews: PreviewProvider {
    static var previews: some View {
        JournalEntryView(entry: JournalEntry(content: "bra dag"))
    }
}
