//
//  guidelines.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 13/06/23.
//

import SwiftUI

struct Guideliness: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                .fill(Color("guidelines-yellow"))
                .frame(minWidth: 358, maxWidth: .infinity, minHeight: 82, maxHeight: 82)
                
                Image("guide-img1")
                    .resizable()
//                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(height: 100)
                
//                Text("Create activity that engage learners")
//                    .font(.system(size: 15))
//                    .fontWeight(.bold)
//                    .frame(maxWidth: 200, maxHeight: 35)
//                HStack {
//                    Text("Create activity that engage learners")
//                    .font(.system(size: 15))
//                    .fontWeight(.bold)
//                    .frame(maxWidth: 200, maxHeight: 35)
//                    .lineLimit(2)
//                    Spacer()
//                    Image(systemName: "chevron.right")
//                }
//                .frame(minWidth: 358, maxWidth: .infinity, minHeight: 82, maxHeight: 82)
//                .padding()
            }
            
        }
        .padding()
    }
}

struct Guideliines: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
            .fill(Color("guidelines-yellow"))
            .frame(minWidth: 358, maxWidth: .infinity, minHeight: 82, maxHeight: 82)
//            Image("guide-img1")
//                .resizable()
//                .scaledToFit()
//                .clipShape(RoundedRectangle(cornerRadius: 12))
//                .frame(height: 300)
//                .clipped()
//                .offset(x: -20)
            
            
            
            HStack {
                Image("guide-img1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(height: 80)
                    .clipped()
//                    .offset(x: -20)
                Spacer()
                Spacer()
            }
//            .frame(width: 600)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .frame(width: 550)
//            .clipped()
                
        }
    }
}

struct GuideCardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
            .fill(Color("guidelines-yellow"))
            .frame(minWidth: 358, maxWidth: .infinity, minHeight: 82, maxHeight: 82)
            HStack {
                Image("guide-img1")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 82)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(width: 200)
//                    .frame(height: 100)
                    .clipped()
                    .offset(x: -70)
                Spacer()
                Text("Create activity that engage learners")
                    .font(.system(size: 15))
                                        .fontWeight(.bold)
                                        .frame(maxWidth: 200, maxHeight: 35)
                    
              
            }
            
        }
 
    }
}

struct Guidelines_Previews: PreviewProvider {
    static var previews: some View {
        GuideCardView()
    }
}
