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
    let diaryDetails: String = ""
    let diaryDate: Date = Date()
    
    init(diaryDetails: String, diaryDate: Date) {
        self.diaryDetails = diaryDetails
        self.diaryDate = diaryDate
    }
}
