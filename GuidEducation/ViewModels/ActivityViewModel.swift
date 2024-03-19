//
//  ActivityViewModel.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 19/03/24.
//

import Foundation

class ActivityViewModel: ObservableObject {
    @Published var activities: [Activity]
    
    init() {
        //kalo ini bisa diganti dari sumbernya yaitu ActivityData, berarti melanggar aturan MVVM krn harusnya yg boleh mengubah let activity itu cuma viewmodel
        let activity = ActivityData.activityData
        self.activities = activity
    }
}
