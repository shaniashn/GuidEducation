//
//  ReflectionViewSecond.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 20/04/24.
//

import SwiftUI

struct ReflectionViewSecond: View {
    var reflection: Reflection
    @State var thisPage: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("guidelines-yellow")
                VStack {
                    Image("reflection")
                    Text("How was the engagement of the students in this activity?")
                        .font(.system(size: 22, weight: .bold))
                        .multilineTextAlignment(.center)
                    
                    VStack(alignment: .leading){
                        ForEach(reflection.engagement) { i in
                            Button {
                                
                            } label: {
                                AnswerRow(id: i.id, isSelected: i.isSelected, text: i.text)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                            }
                        }
                    }
                    
                    HStack {
                        ForEach(0..<5) { _ in
                            Circle()
                                .fill(thisPage ? Color.black : Color.gray)
                                .frame(width: 10)
                        }
                    }
                    .padding()
                    Button(action: {
                        
                    }, label: {
                        Text("Save")
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(Color("orange20"))
                            }
                    })
                    .padding(.top)
                }
                .padding()
                .navigationTitle("Reflection")
                .navigationBarTitleDisplayMode(.inline)
            }
            
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ReflectionViewSecond(reflection: reflectionItem)
}
