//
//  NewActivityView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 24/03/24.
//

import SwiftUI

struct NewActivityView: View {
    var imageGuides: [String] = [
        "guide-img1",
        "guide-img2",
        "guide-img3",
        "guide-img4",
        "guide-img5"
    ]
    var textGuides: [String] = [
        "Create activity that engage learners", 
        "Establish collaboration between learners",
        "Help learners develop creative thinking",
        "Build learners confidence",
        "Reflection"
    ]
    var subTextGuides: [String] = [
        "Choose activity that you will use",
        "Choose activity that can develop collaboration",
        "Choose activity that develop creative thinking",
        "Choose activity that can build confidence",
        "Time to reflect "
    ]
    
    @EnvironmentObject var vm: ActivityViewModel
    
    @State var activityTitle = ""
    @State var activityObjective = ""
    @State var actTemp: Activity?
    @State var showTagView: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment:.leading, content: {
                    VStack(alignment:.leading){
                        Text("Activity Title")
                            .font(.system(size: 22, weight: .bold))
                        TextField(text: $activityTitle) {
                            Text("e.g Teach geometry basics")
                        }
                        .padding(10)
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray.opacity(0.1))
                        }
                    }
                    .padding(.bottom)
                    
                    VStack(alignment:.leading){
                        Text("Activity Objective")
                            .font(.system(size: 22, weight: .bold))
                        TextField(text: $activityObjective) {
                            Text("e.g Students can calculate area")
                        }
                        .padding(10)
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray.opacity(0.1))
                        }
                    }
                    
                    VStack(alignment: .leading, content: {
                        Button(action: {
                            
                        }, label: {
                            HStack {
                                Image(systemName: "calendar")
                                Text("Set Date")
                                    .font(.system(size: 15))
                            }
                            .padding(4)
                            .padding(.horizontal, 5)
                            .foregroundStyle(Color.black)
                            .background {
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color.gray, lineWidth: 1)
                                    .background(Color.white)
                            }
                        })
                        
                        
                        Button(action: {
                            showTagView.toggle()
                        }, label: {
                            HStack {
                                Image(systemName: "tag")
                                Text("Add Tags")
                                    .font(.system(size: 15))
                            }
                            .padding(4)
                            .padding(.horizontal, 5)
                            .foregroundStyle(Color.black)
                            .background {
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color.gray, lineWidth: 1)
                                    .background(Color.white)
                            }
                        })
                        .sheet(isPresented: $showTagView) {
                            ChooseTagView()
                                .presentationDetents([.medium, .fraction(2)])
                        }
                        
                    })
                    .padding(.vertical, 15)
                    
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
                    .onTapGesture {
                        print("debug")
                        vm.addActivity(title: activityTitle, obj: activityObjective, tag: [])
                    }
                })
                .navigationTitle("Your Activity")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.horizontal)
            }
            .scrollIndicators(.hidden)
        }
        
    }
}

#Preview {
    NewActivityView()
}

extension NewActivityView {
    private func guideCardView(id: Int, image: String, text: String, subText: String) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
            .fill(Color("guidelines-yellow"))
            .frame(minWidth: 358, maxWidth: .infinity, minHeight: 82, maxHeight: 82)
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
            .overlay {
                HStack(){
                    Image(image)
                        .mask {
                            maskRect
                        }
                        
                    Spacer()
                }
            }
            HStack {
                Spacer()
                HStack {
                    VStack(alignment: .leading, spacing: 5){
                        Text(text)
                            .font(.system(size: 15, weight: .bold))
                        Text(subText)
                            .font(.system(size: 10, weight: .regular))
                            .opacity(0.8)
                    }
                    Spacer()
                    NavigationLink {
//                        GuidelinesView(id: id)
                    } label: {
                        Image(systemName: "chevron.right")
                            .foregroundStyle(Color.black)
                    }
                }
                .frame(width: 205)
                .padding(.trailing)
            }
            
        }
    }
    
    private var maskRect: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color("guidelines-yellow"))
            //untuk mask bagian frame width dihilangkan karena malah mengganggu bagian masknya
            .frame(minHeight: 82, maxHeight: 82)
    }
}
