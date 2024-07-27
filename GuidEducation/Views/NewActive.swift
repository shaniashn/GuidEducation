    //
    //  NewActive.swift
    //  GuidEducation
    //
    //  Created by Sha Nia Siahaan on 15/05/24.
    //

import SwiftUI

struct NewActive: View {
    
    @EnvironmentObject var vm: ActivityViewModel
    @EnvironmentObject var router: Router
    @State var activityTitle = ""
    @State var activityObjective = ""
    @State var showTagView: Bool = false
    
    var body: some View {
//        NavigationStack {
        VStack {
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
            })
            .padding()
            Spacer()
            Button {
                vm.addActivity(title: activityTitle, obj: activityObjective, tag: [])
                vm.fetchRequest()
                router.addToPath(screen: .guidelinesView)
                
            } label: {
                Text("Next")
                    .foregroundStyle(Color.white)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background {
                Color("guidelines-blue")
            }
            .clipShape(.rect(cornerRadius: 10, style: .continuous))
            .padding(.horizontal)
        }
    }
}

#Preview {
    NewActive()
        .environmentObject(ActivityViewModel())
}

