//
//  EngageView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 17/04/24.
//

import SwiftUI

struct EngageView: View {
    @State var note = ""
    @State var method: String = ""
    @State var engage: Engage
    
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
                                
//                                ForEach(0..<5) { _ in
//                                ForEach(engageItem.engageAct, id: \.self) { i in
//                                    MethodRow(text: i)
//                                }
                                ForEach(engage.engageAct) { method in
                                    MethodRow(method: method)
                                }
                                HStack {
                                    Image(systemName: "plus")
                                        .foregroundStyle(Color.accentColor)
                                    TextField("Add your own method", text: $method)
                                    Spacer()
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
        }
    }
}

#Preview {
    EngageView(engage: engageItem)
}
