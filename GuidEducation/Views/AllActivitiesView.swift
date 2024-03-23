//
//  AllActivitiesView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 22/03/24.
//

import SwiftUI

struct AllActivitiesView: View {
    @EnvironmentObject var vm: ActivityViewModel
    
    @State var search: String = ""
    @State var status: [String] = ["Upcoming", "Recent", "Done"]
    @State var selectedStatus: String = "Upcoming"
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    ScrollView(.horizontal) {
                        ForEach(vm.tags, id: \.self) { tag in
                            TagView(tagName: tag[0])
                        }
//                        HStack(content: {
//                            ForEach(ActivityData.theTags, id: \.self) { i in
//                                TagView(tagName: i.name)
//                            }
//                        })
                        
                    }
                    .scrollIndicators(.hidden)
                    HStack {
                        Text("13 Activities")
                            .font(.system(size: 22, weight: .bold))
                        Spacer()
                        Picker("Please choose the status", selection: $selectedStatus) {
                            ForEach(status, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                }

                
            }
            .navigationTitle("All activities")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $search)
            .padding(.horizontal)
        }
    }
}

#Preview {
    AllActivitiesView()
}
