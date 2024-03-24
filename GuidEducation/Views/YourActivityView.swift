//
//  YourActivityView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 24/03/24.
//

import SwiftUI

struct YourActivityView: View {
    @State var bddd = "assasa"
    var body: some View {
        NavigationStack {
            VStack(alignment:.leading, content: {
                VStack(alignment:.leading){
                    Text("Activity Title")
                        .font(.system(size: 22, weight: .bold))
                    TextField(text: $bddd) {
                        Text("kaska")
                    }
                    .padding(10)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                    }
                }
                .padding(.bottom)
                
                VStack(alignment:.leading){
                    Text("Activity Objective")
                        .font(.system(size: 22, weight: .bold))
                    TextField(text: $bddd) {
                        Text("kaska")
                    }
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                    }
                }
                
                VStack(alignment: .leading, content: {
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Image(systemName: "calendar")
                            Text("Set Date")
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
                
                VStack(alignment: .leading) {
                    Text("Guidelines")
                        .font(.system(size: 22, weight: .bold))
                    
                }
            })
            .navigationTitle("Your Activity")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal)
        }
    }
}

#Preview {
    YourActivityView()
}
