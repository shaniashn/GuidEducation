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
    var guides: [Guidelines] = ActivityData.guidelinesData
    
    init() {
        //kalo ini bisa diganti dari sumbernya yaitu ActivityData, berarti melanggar aturan MVVM krn harusnya yg boleh mengubah let activity itu cuma viewmodel
//        let activity = ActivityData.activityData
//        let tags = ActivityData.theTags
        self.cards = cards
        self.tags = tags
    }
    
    func findIdGuidelines(guide: Guidelines) -> String {
        
        
        return guide.type
    }
    
}
