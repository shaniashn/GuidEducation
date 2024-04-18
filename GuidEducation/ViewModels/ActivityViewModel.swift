//
//  ActivityViewModel.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 19/03/24.
//

import Foundation

class ActivityViewModel: ObservableObject {
    @Published var cards: [Card] = ActivityData.cardData
    @Published var tags: [Tag] = ActivityData.theTags
    @Published var activity: Activity = ActivityData.activityData
    
    
    init() {
        //kalo ini bisa diganti dari sumbernya yaitu ActivityData, berarti melanggar aturan MVVM krn harusnya yg boleh mengubah let activity itu cuma viewmodel
//        let cards = ActivityData.cardData
//        let tags = ActivityData.theTags
        self.cards = cards
        self.tags = tags
        self.activity = activity
    }
    

}
