//
//  ReflectionView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 27/03/24.
//

import SwiftUI

struct ReflectionView: View {
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
                    
                    scoring
                    
                    HStack {
                        ForEach(0..<5) { _ in
                            Circle()
                                .fill(thisPage ? Color.black : Color.gray)
                                .frame(width: 10)
                        }
                    }
                    .padding()
                    Button(action: {}, label: {
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
    ReflectionView()
}

extension ReflectionView {
    private var one: some View {
        VStack(alignment: .leading){
            ForEach(0..<3) { _ in
                HStack(spacing: 20){
                    Circle()
                        .fill(Color.blue10)
                        .frame(width: 14)
                        .background {
                            Circle()
                                .stroke(Color.pink, lineWidth: 1)
                                .frame(width: 30)
                        }
                    Text("Very well, they actively participated  throughout the whole activity")
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 60)
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                }
                
            }
        }
    }
    
    private var scoring: some View {
        VStack(spacing: 20){
            HStack(spacing: 15){
                ForEach(1..<6) { num in
                    Text("\(num)")
                        .frame(width: 40, height: 50)
                        .background {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white)
                        }
                }
            }
            HStack(spacing: 15){
                ForEach(6..<11) { num in
                    Text("\(num)")
                        .frame(width: 40, height: 50)
                        .background {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white)
                        }
                }
            }
        }
        .padding(.vertical, 50)
    }
}
