//
//  EngageView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 17/04/24.
//

import SwiftUI

struct EngageView: View {
    @EnvironmentObject var vm: ActivityViewModel
    
    @State var note = ""
    @State var method: String = ""
    @State var engage: Engage
    @State var methodTemp: [Method] = [
        Method(id: 1, text: "Ice breaking activity", isSelected: false),
        Method(id: 2, text: "Give analogy", isSelected: false),
        Method(id: 3, text: "Real case study", isSelected: true)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        Image("collaboration")
                        Spacer()
                    }
                    VStack {
                        Rectangle()
                            .fill(Color.clear)
                            .frame(height: 150)
                        VStack {
                            VStack(alignment: .leading, spacing: 5, content: {
                                Text("Create activity that engage learners")
                                    .font(.system(size: 25, weight: .semibold))
                                Text("Make learners engage with the topic that you are trying to bring")
                                    .font(.system(size: 17, weight: .regular))
                            })
                            .padding()
                            
                            VStack(alignment: .leading){
                                VStack(alignment: .leading, spacing: 0){
                                    Text("Things that can develop collaboration")
                                        .font(.system(size: 17, weight: .semibold))
                                    Text("Choose one or more")
                                        .font(.system(size: 15, weight: .regular))
                                        .foregroundStyle(.black.opacity(0.5))
                                }
//                                ForEach(engage.engageAct) { method in
//                                    MethodRow(method: method)
//                                }
                                ForEach(methodTemp) { met in
                                    MethodRow(method: met)
                                }
                                HStack {
                                    Button {
                                        let baru = Method(id: 5, text: "\(method)", isSelected: true)
//                                        func addMthd() {
//                                            engage.engageAct.append(baru)
//                                        }
                                        methodTemp.append(baru)
                                    } label: {
                                        Image(systemName: "plus")
                                            .foregroundStyle(Color.accentColor)
                                    }
                                    
                                    
                                    TextField("Add your own method", text: $method)
//                                    Spacer()
                                    
//                                    Button {
//                                        
//                                    } label: {
//                                        Text("Add")
//                                            .padding(6)
//                                            .background {
//                                                Color.gray.opacity(0.3)
//                                            }
//                                    }
                                    
                                    
                                }
                                .frame(height: 30)
                            }
                            .padding(.horizontal)
                            
                            TextEditor(text: $note)
                                .padding()
                                .frame(height: 150)
                            Spacer()
                        }
                        .background {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color("guidelines-gray"))
                        }
                        .padding()
                        
                    }
                }
//                .frame(height: .infinity)
            }
            .background(Color("guidelines-yellow"))
            .navigationTitle("Activity Framework")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button {
//                        let enggg = Engage(engageAct: engage.engageAct, notes: note)
                        vm.addToMethodList(text: "\(note)", methods: methodTemp)
                    } label: {
                        Text("Save")
                    }

                }
            }
        }
    }
}

#Preview {
    EngageView(engage: engageItem)
        .environmentObject(ActivityViewModel())
}
