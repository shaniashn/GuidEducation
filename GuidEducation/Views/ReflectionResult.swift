//
//  ReflectionResult.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 27/03/24.
//

import SwiftUI

struct ReflectionResult: View {
    @State var note: String = ""
    var shades: [String] = [
        "orange", "yellow", "blue"
    ]
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Image("orange")
                    Spacer()
                }
                troubles
            }
            .ignoresSafeArea()
        }
    }
}

extension ReflectionResult {
    private var awesome: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading, spacing: 15){
                Text("Awesome!")
                    .font(.system(size: 34, weight: .bold))
                Text("It seems like you had a great time with your students in this activity.")
                Text("Let’s share some more thoughts down here for future improvement.")
            }
            .padding(.bottom, 50)
            
            VStack(alignment: .leading){
                Text("What went well in this activity?")
                    .font(.system(size: 17, weight: .semibold))
                TextField(text: $note) {
                    Text("Write your note here")
                }
                .padding()
                .frame(height: 50)
            }
            .padding(.bottom, 30)
            
            VStack(alignment: .leading){
                Text("What went well in this activity?")
                    .font(.system(size: 17, weight: .semibold))
                TextField(text: $note) {
                    Text("Write your note here")
                }
                .padding()
                .frame(height: 50)
            }
            
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
            .padding(.top, 100)
        }
        .padding()
    }
    
    private var keepItUp: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading, spacing: 15){
                Text("Keep it up!")
                    .font(.system(size: 34, weight: .bold))
                Text("It seems like you faced some challenges but you still managed to conduct a great activity.")
                Text("Let’s share some more thoughts down here for future improvement.")
            }
            .padding(.bottom, 50)
            
            VStack(alignment: .leading){
                Text("What went well in this activity?")
                    .font(.system(size: 17, weight: .semibold))
                TextField(text: $note) {
                    Text("Write your note here")
                }
                .padding()
                .frame(height: 50)
            }
            
            VStack(alignment: .leading){
                Text("What went well in this activity?")
                    .font(.system(size: 17, weight: .semibold))
                TextField(text: $note) {
                    Text("Write your note here")
                }
                .padding()
                .frame(height: 50)
            }
            .padding(.bottom, 30)
            
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
            .padding(.top, 100)
        }
        .padding()
    }
    
    private var troubles: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading, spacing: 15){
                Text("Having troubles?")
                    .font(.system(size: 34, weight: .bold))
                Text("It seems like there were some struggles that you encountered but don’t let that stop you from anything!")
                Text("Let’s share some more thoughts down here for future improvement.")
            }
            .padding(.bottom, 50)
            
            VStack(alignment: .leading){
                Text("What didn’t go well in this activity?")
                    .font(.system(size: 17, weight: .semibold))
                TextField(text: $note) {
                    Text("Write your note here")
                }
                .padding()
                .frame(height: 50)
            }
            .padding(.bottom, 30)
            
            VStack(alignment: .leading){
                Text("What can you do better next time?")
                    .font(.system(size: 17, weight: .semibold))
                TextField(text: $note) {
                    Text("Write your note here")
                }
                .padding()
                .frame(height: 50)
            }
            
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
            .padding(.top, 100)
        }
        .padding()
    }
}

#Preview {
    ReflectionResult()
}
