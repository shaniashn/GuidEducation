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
//                    MARK: 1
//                        ForEach(0..<5) { item in
//                            guideCardView(id: vm.guides[item].id, image: vm.guides[item].imageGuides, text:vm.guides[item].textGuides, subText: vm.guides[item].subTextGuides)
//                            NavigationLink {
//                                GuidelinesView(id: vm.guides[item].id, activity: vm.activity[item])
//                            } label: {
//                                GuideCardView(imageGuides: vm.guides[item].imageGuides, textGuides: vm.guides[item].textGuides, subTextGuides: vm.guides[item].subTextGuides)
//                            }
                
//                        }
//                    MARK: 1
//                        ForEach(vm.activity.guideline.indices, id: \.self) { item in
//                            NavigationLink {
////                                EngageView(engage: vm.activity.guideline[item].type.engage)
//                                GuidelinesView(guideType: vm.activity.guideline[item].type)
//                            } label: {
//                                GuideCardView(imageGuides: vm.activity.guideline[item].imageGuides, textGuides: vm.activity.guideline[item].textGuides, subTextGuides: vm.activity.guideline[item].subTextGuides)
//                            }
//                        }
            NavigationLink {
                EngageView(engage: vm.activity.guide!.engage)
            } label: {
                GuideCardView(imageGuides: vm.activity.guideline[0].imageGuides, textGuides: vm.activity.guideline[0].textGuides, subTextGuides: vm.activity.guideline[0].subTextGuides)
            }
            
            
//                        NavigationLink {
//                            CollabView(collab: vm.activity.guide!.collab)
//                        } label: {
//                            GuideCardView(imageGuides: vm.activity.guideline[1].imageGuides, textGuides: vm.activity.guideline[1].textGuides, subTextGuides: vm.activity.guideline[1].subTextGuides)
//                        }
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
    }
}

#Preview {
    ListGuidelinesView()
}
