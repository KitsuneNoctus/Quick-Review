//
//  ContentView.swift
//  QuickDiary
//
//  Created by Henry Calderon on 7/18/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    
    @State private var entryDetails: String = "..."

    var body: some View {
        VStack {
        List(entries) { entry in
                
            }
            Form {
                TextEditor(text: $entryDetails)
            }
            Button {
                print("The info...")
            } label: {
                Text("Save")
            }
        }
    }

//    private func addItem() {
//        withAnimation {
//            let newItem = Item(timestamp: Date())
//            modelContext.insert(newItem)
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            for index in offsets {
//                modelContext.delete(items[index])
//            }
//        }
//    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
