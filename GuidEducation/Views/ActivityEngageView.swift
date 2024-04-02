//
//  ActivityEngageView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 27/03/24.
//

import SwiftUI

struct ActivityEngageView: View {
    @State var note: String = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        Image("collaboration")
                        Spacer()
                    }
                    // MARK: -
                    engage
                }
                .frame(height: .infinity)
            }
            .background(Color("guidelines-yellow"))
            .navigationTitle("Activity Framework")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

extension ActivityEngageView {
    private var engage: some View {
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
                    
                    ForEach(0..<5) { _ in
                        HStack {
                            Circle()
                                .fill(Color.clear)
                                .frame(width: 14)
                                .background {
                                    Circle()
                                        .stroke(Color.pink, lineWidth: 1)
                                        .frame(width: 30)
                                }
                            Text("ss")
                            Spacer()
                        }
                        .frame(height: 30)
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
    
    private var collaboration: some View {
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
                                Text("Discussions")
                                    .font(.system(size: 17, weight: .semibold))
                                Text("Pair of group discussions")
                            }
                            Spacer()
                        }
                        .frame(height: 50)
                    }
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
                
                ForEach(0..<5) { _ in
                    HStack {
                        Circle()
                            .fill(Color.clear)
                            .frame(width: 14)
                            .background {
                                Circle()
                                    .stroke(Color.pink, lineWidth: 1)
                                    .frame(width: 30)
                            }
                        Text("ss")
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
                    .frame(height: .infinity)
            }
            .padding()
        }
    }
    
    private var thinking: some View {
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
    
    private var confidence: some View {
        VStack {
            Rectangle()
                .fill(Color.clear)
                .frame(height: 150)
            VStack(alignment: .leading){
                VStack(alignment: .leading, spacing: 5, content: {
                    Text("Build learners confidence")
                        .font(.system(size: 25, weight: .semibold))
                    Text("Help learners to build their confidence by presenting what they have been working on")
                        .font(.system(size: 17, weight: .regular))
                    
                })
                .padding()
                
                VStack(alignment: .leading){
                    VStack(alignment: .leading, spacing: 0){
                        Text("Things that can be done to help learners build confidence")
                            .font(.system(size: 17, weight: .semibold))
                            .frame(height: 50)
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
                                Text("Peer Feedback")
                                    .font(.system(size: 17, weight: .semibold))
                                Text("Encourage peer feedback")
                                    .font(.system(size: 16, weight: .regular))
                            }
                            Spacer()
                        }
                        .frame(height: 50)
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
}

#Preview {
    ActivityEngageView()
}
