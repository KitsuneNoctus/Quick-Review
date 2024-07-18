//
//  DiaryEntryModel.swift
//  QuickDiary
//
//  Created by Henry Calderon on 7/18/24.
//

import Foundation
import SwiftData

@Model
final class DiaryEntryModel {
    let diaryDetails: String
    let diaryDate: Date
    
    init(diaryDetails: String, diaryDate: Date) {
        self.diaryDetails = diaryDetails
        self.diaryDate = diaryDate
    }
}

//let entries = [
//    DiaryEntryModel(diaryDetails: "I had an amazing day at the beach and wanted to learn snorkeling as a result", diaryDate: Date()),
//    DiaryEntryModel(diaryDetails: "License plate 747ded9", diaryDate: Date()),
//    DiaryEntryModel(diaryDetails: "I wish I had purchased that pillow", diaryDate: Date())
//]
