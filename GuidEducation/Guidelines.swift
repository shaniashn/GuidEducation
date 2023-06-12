//
//  guidelines.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 13/06/23.
//

import SwiftUI

struct Guidelines: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                .fill(Color("guidelines-yellow"))
                .frame(minWidth: 358, maxWidth: .infinity, minHeight: 82, maxHeight: 82)
                HStack {
                    Text("Create activity that engage learners")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .frame(maxWidth: 200, maxHeight: 35)
                    .lineLimit(2)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .frame(minWidth: 358, maxWidth: .infinity, minHeight: 82, maxHeight: 82)
                .padding()
            }
        }
        .padding()
    }
}

struct Guidelines_Previews: PreviewProvider {
    static var previews: some View {
        Guidelines()
    }
}
