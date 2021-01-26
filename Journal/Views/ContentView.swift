//
//  ContentView.swift
//  Journal
//
//  Created by Greger Sundvall on 2021-01-22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var journal = Journal()

    var body: some View {
        
        NavigationView {
            
            VStack {
                List() {
                    ForEach(journal.entries) { entry in
                        NavigationLink(
                            destination: JournalEntryView(entry: entry)) {
                                RowView(entry: entry)}
                        
                    }.onDelete(perform: {indexSet in
                            journal.entries.remove(atOffsets: indexSet)})
                    
                }
            }
            .navigationTitle("Journal Entries")
            .navigationBarItems(trailing: NavigationLink(destination: JournalEntryView(), label: {Image(systemName: "plus")}))
            
            
        }
    }
}

struct RowView: View {
    
    var entry: JournalEntry
    var date: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        let date = formatter.string(from: entry.date)
        return date
    }
    
    var body: some View {
        
        HStack {
            //Text(String(entry.date.description.dropLast(15)))
            Text(date)
            Spacer()
            Text(entry.content)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
