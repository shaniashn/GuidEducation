//
//  ListGuidelinesView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 15/05/24.
//

import SwiftUI

struct ListGuidelinesView: View {
    @EnvironmentObject var vm: ActivityViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Guidelines")
                .font(.system(size: 22, weight: .bold))
            NavigationLink {
                EngageView(engage: vm.activity.guide!.engage)
            } label: {
                GuideCardView(imageGuides: vm.activity.guideline[0].imageGuides, textGuides: vm.activity.guideline[0].textGuides, subTextGuides: vm.activity.guideline[0].subTextGuides)
            }
            NavigationLink {
                CollabView(collab: vm.activity.guide!.collab)
            } label: {
                GuideCardView(imageGuides: vm.activity.guideline[1].imageGuides, textGuides: vm.activity.guideline[1].textGuides, subTextGuides: vm.activity.guideline[1].subTextGuides)
            }
//                        NavigationLink {
//                            ThinkView(think: vm.activity.guide!.think)
//                        } label: {
//                            GuideCardView(imageGuides: vm.activity.guideline[2].imageGuides, textGuides: vm.activity.guideline[2].textGuides, subTextGuides: vm.activity.guideline[2].subTextGuides)
//                        }
//                        NavigationLink {
//                            ConfidenceView(confidence: vm.activity.guide!.confi)
//                        } label: {
//                            GuideCardView(imageGuides: vm.activity.guideline[3].imageGuides, textGuides: vm.activity.guideline[3].textGuides, subTextGuides: vm.activity.guideline[3].subTextGuides)
//                        }
//                        NavigationLink {
//                            ReflectionView(reflection: vm.activity.guide!.reflect)
//                        } label: {
//                            GuideCardView(imageGuides: vm.activity.guideline[4].imageGuides, textGuides: vm.activity.guideline[4].textGuides, subTextGuides: vm.activity.guideline[4].subTextGuides)
//                        }
            
            
        }
        .padding()
    }
}

#Preview {
    ListGuidelinesView()
        .environmentObject(ActivityViewModel())
}
