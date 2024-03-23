    //
    //  ActivityCardView.swift
    //  GuidEducation
    //
    //  Created by Sha Nia Siahaan on 12/06/23.
    //

import SwiftUI

struct ActivityCardView: View {
    var activity: Activity
    
    var body: some View {
        HStack (alignment: .top, spacing: 0) {
//            if activity.isTodayActivity {
//                Image("activity-1s")
//                    .padding(.trailing)
//            }
            
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading) {
//                MARK: Judul
                    HStack{
                        Text(activity.judul)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                        
                    }
                    .font(.title2)
//                MARK: Description
                    Text(activity.deskripsi)
                        .lineLimit(2)
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                }
                
//                HStack {
//                    ForEach(0..<2) { index in
//                        TagView(tagName: activity.tags[index])
//                    }
//                    
//                    if activity.tags.count > 1 {
//                        Text("\(activity.tags.count-1)+")
//                    }
//                }
//                .font(.caption)
//                
//                if !activity.isTodayActivity {
//                    Image("activity-1b")
//                }
                
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
                Image("art-big")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            
        }
//        .frame(maxWidth: .infinity, maxHeight: activity.isTodayActivity ? 130 : 265)
        .frame(maxWidth: .infinity)
        .padding()
        .background(activity.isTodayActivity ? Color("today-activity-blue") : Color("your-activity-blue"))
        .cornerRadius(12)
        
    }
}

struct ActivityCardView_Previews: PreviewProvider {
    static var previews: some View {
//        ActivityCardView(activity: Activity (id: 8, judul: "Matrix", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan agar jadi pintar matrix kok ga panjang lagi", image: "", tags: ["Ulangan Harian","Ujian Akhir", "Tag1", "Tag2"], isTodayActivity: false))
//        TagView(tagName: theTags[1].name).preferredColorScheme(.dark)
        ActivityCardView(activity: Activity(id: 6, judul: "Matrix", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "math-small", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], isTodayActivity: true))
    }
}
