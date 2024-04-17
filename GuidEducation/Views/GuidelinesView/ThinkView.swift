//
//  ThinkView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 17/04/24.
//

import SwiftUI

struct ThinkView: View {
    @State var note = ""
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
                                Text("Help learners to develop creative thinking")
                                    .font(.system(size: 25, weight: .semibold))
                                Text("Guide learners to analyze gained information on project topic")
                                    .font(.system(size: 17, weight: .regular))
                                
                            })
                            .padding()
                            
                            VStack(alignment: .leading){
                                VStack(alignment: .leading, spacing: 0){
                                    Text("Things that can be done to develop creative thinking")
                                        .font(.system(size: 17, weight: .semibold))
                                    Text("Choose one or more")
                                        .font(.system(size: 15, weight: .regular))
                                        .foregroundStyle(.black.opacity(0.5))
                                }
                                
                                ForEach(0..<6) {_ in
                                    HStack(spacing: 15){
                                        Circle()
                                            .fill(Color.blue10)
                                            .frame(width: 14)
                                            .background {
                                                Circle()
                                                    .stroke(Color.pink, lineWidth: 1)
                                                    .frame(width: 30)
                                            }
                                        VStack(alignment: .leading){
                                            Text("Questioning & Curiosity")
                                                .font(.system(size: 17, weight: .semibold))
                                            Text("Encourage questioning and curiosity")
                                                .font(.system(size: 16, weight: .regular))
                                        }
                                        Spacer()
                                    }
                                }
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
                                .frame(height: .infinity)
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
    ThinkView()
}
