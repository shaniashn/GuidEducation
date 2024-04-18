//
//  CollabView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 17/04/24.
//

import SwiftUI

struct CollabView: View {
    @State var note = ""
    @State var method = ""
    @State var method2 = ""
    @State var collab: Collab
    
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
                        VStack(alignment: .leading){
                            VStack(alignment: .leading, spacing: 5, content: {
                                Text("Establish collaboration between learners")
                                    .font(.system(size: 25, weight: .semibold))
                                Text("Let learners learn from each other by collaborating in teams")
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
                                
//                                ForEach(collab.collabThing.indices, id: \.self) { i in
//                                
//                                    HStack(spacing: 15){
//                                        Circle()
//                                            .fill(collab.collabThing[i].isSelected ? Color("gray20") : Color.clear)
//                                            .frame(width: 16)
//                                            .background {
//                                                Circle()
//                                                    .stroke(Color("gray10"), lineWidth: 1.5)
//                                                    .frame(width: 16)
//                                            }
//                                        VStack(alignment: .leading){
////                                            Text("Discussions")
//                                            Text(collab.collabThing[i].text)
//                                                .font(.system(size: 17, weight: .semibold))
////                                            Text("Pair of group discussions")
//                                            Text(collab.collabThing[i].text2!)
//                                        }
//                                        Spacer()
//                                    }
//                                    .frame(height: 50)
                                ForEach(collab.collabThing) { item in
                                    MethodRow(method: item)
                                }
                                HStack {
                                    Image(systemName: "plus")
                                        .foregroundStyle(Color.accentColor)
                                    TextField("Add your own method", text: $method)
                                    Spacer()
                                }
                                .frame(height: 30)
//
//                                }
                            }
                            .padding(.horizontal)
                            
                            VStack(alignment: .leading, spacing: 2) {
                                Text("List of activities and games that can establish collaboration between learners")
                                    .font(.system(size: 17, weight: .semibold))
                                Text("Choose one or more")
                                    .font(.system(size: 15, weight: .regular))
                                    .foregroundStyle(.black.opacity(0.5))
                                
                            }
                            .padding(.horizontal)
                            .padding(.top)
                            
//                            ForEach(0..<5) { _ in
//                                HStack {
//                                    Circle()
//                                        .fill(Color.clear)
//                                        .frame(width: 14)
//                                        .background {
//                                            Circle()
//                                                .stroke(Color.pink, lineWidth: 1)
//                                                .frame(width: 30)
//                                        }
//                                    Text("ss")
//                                    Spacer()
//                                }
//                                .frame(height: 30)
//                            }
                            VStack {
                                ForEach(collab.collabAct, content: { item in
                                    MethodRow(method: item)
                                })
                                
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
//                                .frame(height: .infinity)
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
    CollabView(collab: collabItem)
}
