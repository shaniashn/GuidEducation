//
//  ActivityViewModel.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 19/03/24.
//

import Foundation

class ActivityViewModel: ObservableObject {
    @Published var cards: [Card] = ActivityData.activityData
    @Published var tags: [Tag] = ActivityData.theTags
//    @Published var activity: [Activity] = 
    var guides: [Guidelines] = ActivityData.guidelinesData
//    @Published var answers: [Answers] = answrs1
    
    init() {
        //kalo ini bisa diganti dari sumbernya yaitu ActivityData, berarti melanggar aturan MVVM krn harusnya yg boleh mengubah let activity itu cuma viewmodel
//        let activity = ActivityData.activityData
//        let tags = ActivityData.theTags
        self.cards = cards
        self.tags = tags
    }
    
    
    
//    func findIdGuidelines(guide: Guidelines) -> String {
//        return guide.type
//    }
    
//    func changeSelected(ans: Answers) -> Answers {
//        var result: Bool
//        if var index = answers.firstIndex(where: { $0.id == ans.id }) {
//            result = answers[index].isSelected
//        } else {
//            print("index not found")
//        }
//        
//        return answers[index].isSelected
        
//        return Answers(id: ans.id, ans: ans.ans, isSelected: !ans.isSelected)
//    }
}
