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
                    })
                    .padding(.vertical, 15)
                    
                    VStack(alignment: .leading) {
                        Text("Guidelines")
                            .font(.system(size: 22, weight: .bold))
                        ForEach(0..<5) { item in
//                            guideCardView(id: vm.guides[item].id, image: imageGuides[item], text: textGuides[item], subText: subTextGuides[item])
//                            GuideCardView(id: 1, imageGuides: imageGuides[item], textGuides: textGuides[item], subTextGuides: subTextGuides[item])
//                            guideCardView(id: vm.guides[item].id, image: vm.guides[item].imageGuides, text:vm.guides[item].textGuides, subText: vm.guides[item].subTextGuides)
                            NavigationLink {
                                GuidelinesView(id: vm.guides[item].id)
                            } label: {
                                GuideCardView(imageGuides: vm.guides[item].imageGuides, textGuides: vm.guides[item].textGuides, subTextGuides: vm.guides[item].subTextGuides)
                            }

                        }
                        
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
//                        .background(Color.pink)
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
//                .background(Color.gray)
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
