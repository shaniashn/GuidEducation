//
//  TagView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 02/08/23.
//

import SwiftUI

struct TagView: View {
    @State var tagName: String
    
    var body: some View {
        HStack(spacing: 3){
            Image("\(tagName)-icon")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 10)
            Text(tagName)
                .font(.system(size: 12))
                .foregroundColor(.black)
        }
        
        .padding(4)
        .padding(.horizontal, 5)
        .background {
            RoundedRectangle(cornerRadius: 50)
                .stroke(Color.gray, lineWidth: 2)
                .background(Color.white)
        }
        .cornerRadius(50)
    }
}

//struct TagView_Previews: PreviewProvider {
//    static var previews: some View {
//        TagView(tagName: "Mathematics")
//    }
//}
