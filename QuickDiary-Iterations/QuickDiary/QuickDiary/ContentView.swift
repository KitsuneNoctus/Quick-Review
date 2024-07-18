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
    @Query private var diaryEntries: [DiaryEntryModel]
    
    
    @State private var entryDetails: String = "..."

    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(diaryEntries) { entry in
                        DiaryListCell(diaryEntry: entry)
                    }
//                    .onDelete { indexSet in
//                        print("delete")
//                    }
                }
                .toolbar {
                    EditButton()
                }
                Form {
                    TextEditor(text: $entryDetails)
                }
                Button {
                    let diaryEntry = DiaryEntryModel(diaryDetails: entryDetails, diaryDate: Date())
                    modelContext.insert(diaryEntry)
                    entryDetails = "..."
                } label: {
                    Text("Save")
                }
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
        .modelContainer(for: DiaryEntryModel.self, inMemory: true)
}
