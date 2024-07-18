//
//  DiaryListCell.swift
//  QuickDiary
//
//  Created by Henry Calderon on 7/18/24.
//

import SwiftUI

struct DiaryListCell: View {
    
    let diaryEntry: DiaryEntryModel
    
    var body: some View {
        HStack {
            Text(diaryEntry.diaryDetails)
                .lineLimit(1)
                .font(.subheadline)
            Spacer()
            VStack {
                Text(diaryEntry.diaryDate, style: .date)
                Text(diaryEntry.diaryDate, style: .time)
            }
        }
    }
}

#Preview {
    List {
        DiaryListCell(diaryEntry: DiaryEntryModel(diaryDetails: "I had a blast at the pool today. I was able to swim 20 laps in under 5 minutes", diaryDate: Date()))
    }
}
