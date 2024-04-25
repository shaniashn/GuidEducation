//
//  TodayActivity.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 29/07/23.
//

import SwiftUI

struct TodayActivityCard: View {
    
//    @State var activity: Activity
    @State var card: Card
    
    var body: some View {
        HStack(spacing: 10){
            Image(card.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80)
            VStack(alignment: .leading){
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(card.judul)
                            .font(.system(size: 16, weight: .bold))
                        Spacer()
                        Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                    }
                    HStack {
                        Text(card.deskripsi)
                            .font(.system(size: 13, weight: .regular))
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    .frame(width: 260)
                }
                HStack {
//              MARK: versi lain, seluruh tag
//                    ForEach(card.tags, id: \.self) { i in
//                        TagView(tagName: i)
//                    }
                    
//                    ForEach(0..<2) { idx in
//                        TagView(tagName: card.tags[idx])
//                    }
                    
                    if card.tags.count >= 2 {
                        ForEach(0..<2) { idx in
                            TagView(tagName: card.tags[idx])
                        }
                        
                        Text("\(card.tags.count-2)+")
                            .font(.system(size: 12))
                            .foregroundColor(.black)
                            .padding(4)
                            .padding(.horizontal, 5)
                            .background {
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color.gray, lineWidth: 2)
                                    .background(Color.white)
                            }
                            .cornerRadius(50)
                    }
                    else {
                        TagView(tagName: card.tags[0])
                    }
                }
            }
        }
        .foregroundColor(Color.white)
        .frame(maxWidth: .infinity)
        .padding(10)
        .background(Color.myBlue)
        .cornerRadius(12)
    }
}

struct TodayActivityCard_Previews: PreviewProvider {
    static var previews: some View {
        TodayActivityCard(card: Card(id: 7, judul: "Matriks", deskripsi: "Students can calculate area, perimeter, volume of shapes and apply it to daily use", image: "biology-small", tags: ["Math", "Biology", "Exam"], isTodayActivity: true))
    
            
    }
}

extension TodayActivityCard {
    private func tagView() -> some View {
        HStack(spacing: 3){
//            Image("\(tagName)-icon")
            Image("Math-icon")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 10)
//            Text(tagName)
            Text("Math")
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
