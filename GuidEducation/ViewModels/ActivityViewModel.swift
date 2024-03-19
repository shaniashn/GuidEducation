//
//  ActivityViewModel.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 19/03/24.
//

import Foundation

class ActivityViewModel: ObservableObject {
    @Published private var activities: [Activity]
    
    init() {
        let activity = ActivityData.activityData
        self.activities = activity
    }
}
