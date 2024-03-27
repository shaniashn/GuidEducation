//
//  guidelines.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 13/06/23.
//

import SwiftUI

struct GuideCardView: View {
    var imageGuides: [String] = ["guide-img1", "guide-img2", "guide-img3", "guide-img4", "guide-img5"]
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
            .fill(Color("guidelines-yellow"))
            .frame(minWidth: 358, maxWidth: .infinity, minHeight: 82, maxHeight: 82)
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
            .overlay {
                HStack(){
                    Image("guide-img1")
                        .mask {
                            maskRect
                        }
                        
                    Spacer()
                }
            }
            HStack {
                Spacer()
                Text("Create activity that engage learners")
                    .font(.system(size: 17, weight: .bold))
                    .frame(width: 250)
                NavigationLink {
                    
                } label: {
                    Image(systemName: "chevron.right")
                        .foregroundStyle(Color.black)
                }
            }
            .padding(.trailing)
            
        }
 
    }
    
}

extension GuideCardView {
    private var maskRect: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color("guidelines-yellow"))
            //untuk mask bagian frame width dihilangkan karena malah mengganggu bagian masknya
            .frame(minHeight: 82, maxHeight: 82)
    }
}

struct Guidelines_Previews: PreviewProvider {
    static var previews: some View {
        GuideCardView()
    }
}
