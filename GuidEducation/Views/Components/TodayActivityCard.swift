//
//  TodayActivity.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 29/07/23.
//

import SwiftUI

struct TodayActivityCard: View {
    
    @State var activity: Activity
    
    var body: some View {
        HStack(spacing: 0){
            Image(activity.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80)
            VStack(alignment: .leading){
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(activity.judul)
                            .font(.system(size: 16, weight: .bold))
                        Spacer()
                        Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                    }
                    Text(activity.deskripsi)
                        .font(.system(size: 13, weight: .regular))
                        .multilineTextAlignment(.leading)
                }
                HStack {
//              MARK: versi lain, seluruh tag
//                    ForEach(activity.tags, id: \.self) { i in
//                        TagView(tagName: i)
//                    }
                    
//                    ForEach(0..<2) { idx in
//                        TagView(tagName: activity.tags[idx])
//                    }
                    
                    if activity.tags.count >= 2 {
                        ForEach(0..<2) { idx in
                            TagView(tagName: activity.tags[idx])
                        }
                        
                        Text("\(activity.tags.count-2)+")
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
                        TagView(tagName: activity.tags[0])
                    }
                }
            }
        }
        .foregroundColor(Color.white)
        .frame(maxWidth: .infinity)
        .padding(8)
        .background(Color.myBlue)
        .cornerRadius(12)
    }
}

struct TodayActivityCard_Previews: PreviewProvider {
    static var previews: some View {
        TodayActivityCard(activity: Activity(id: 7, judul: "Matriks", deskripsi: "Students can calculate area, perimeter, volume of shapes and apply it to daily use", image: "biology-small", tags: ["Math", "Biology", "Exam"], isTodayActivity: true))
            
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
