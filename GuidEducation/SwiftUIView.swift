//
//  SwiftUIView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 21/06/23.
//

import SwiftUI

struct SwiftUIsView: View {
    var body: some View {
            Image("activity-1s")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .clipShape(RoundedRectangle(cornerRadius: 12))
//                .frame(width: 300)
//                .clipped()
        
//        ZStack {
//            RoundedRectangle(cornerRadius: 20)
//                .fill(Color.blue)
//                .frame(width: 300, height: 200)
//            
//            Image("activity-1s")
//                .resizable()
//                .scaledToFill()
//                .s
//            
//                .frame(height: 200)
//        }
//        .clipShape(RoundedRectangle(cornerRadius: 20))
//        .clipShape(Circle())
//        .frame(width: 1000, height: 300)
//        .background(Color.blue)
    }
}

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(minWidth: 358, maxWidth: .infinity, minHeight: 82, maxHeight: 82)
            
            Image("guide-img1")
                .resizable()
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .frame(height: 100)
                .clipped()
//                .scaledToFit()
//                .imageScale()
                
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
