//
//  guidelines.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 13/06/23.
//

import SwiftUI

struct GuideCardView: View {
//    var imageGuides: [String] = [
//        "guide-img1",
//        "guide-img2",
//        "guide-img3",
//        "guide-img4",
//        "guide-img5"
//    ]
//    var textGuides: [String] = [
//        "Create activity that engage learners",
//        "Establish collaboration between learners",
//        "Help learners develop creative thinking",
//        "Build learners confidence",
//        "Reflection"
//    ]
//    var subTextGuides: [String] = [
//        "Choose activity that you will use",
//        "Choose activity that can develop collaboration",
//        "Choose activity that develop creative thinking",
//        "Choose activity that can build confidence",
//        "Time to reflect "
//    ]
//    @EnvironmentObject var vm: ActivityViewModel
    
//    var id: Int
    var imageGuides: String
    var textGuides: String
    var subTextGuides: String
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
            .fill(Color("guidelines-yellow"))
            .frame(minWidth: 358, maxWidth: .infinity, minHeight: 82, maxHeight: 82)
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
            .overlay {
                HStack(){
                    Image(imageGuides)
                        .mask {
                            maskRect
                        }
                    Spacer()
                }
            }
            HStack {
                Spacer()
                HStack {
                    VStack(alignment: .leading, spacing: 5){
                        Text(textGuides)
                            .font(.system(size: 15, weight: .bold))
                            .foregroundStyle(.black)
                        Text(subTextGuides)
                            .font(.system(size: 10, weight: .regular))
                            .opacity(0.8)
                            .foregroundStyle(.black)
                    }
                    .multilineTextAlignment(.leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundStyle(Color.black)
//                    NavigationLink {
//                    } label: {
//                        Image(systemName: "chevron.right")
//                            .foregroundStyle(Color.black)
//                    }
                }
                .frame(width: 205)
                .padding(.trailing)
            }
            
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
        GuideCardView(imageGuides: "guide-img1", textGuides: "Create activity that engage learners", subTextGuides: "Choose activity that you will use")
    }
}
