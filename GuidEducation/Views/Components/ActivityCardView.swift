    //
    //  ActivityCardView.swift
    //  GuidEducation
    //
    //  Created by Sha Nia Siahaan on 12/06/23.
    //

import SwiftUI

struct ActivityCardView: View {
//    var activity: Activity
    var card: Card
    
    var body: some View {
        HStack (alignment: .top, spacing: 0) {
//            if card.isTodayActivity {
//                Image("card-1s")
//                    .padding(.trailing)
//            }
            
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading) {
//                MARK: Judul
                    HStack{
                        Text(card.judul)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                        
                    }
                    .font(.title2)
//                MARK: Description
                    Text(card.deskripsi)
                        .lineLimit(2)
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                }
                
//                HStack {
//                    ForEach(0..<2) { index in
//                        TagView(tagName: card.tags[index])
//                    }
//                    
//                    if card.tags.count > 1 {
//                        Text("\(card.tags.count-1)+")
//                    }
//                }
//                .font(.caption)
//                
//                if !card.isTodayActivity {
//                    Image("card-1b")
//                }
                
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
                Image("art-big")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            
        }
//        .frame(maxWidth: .infinity, maxHeight: card.isTodayActivity ? 130 : 265)
        .frame(maxWidth: .infinity)
        .padding()
//        .background(card.isTodayActivity ? Color("today-activity-blue") : Color("your-activity-blue"))
        .background(Color(.blue30))
        .cornerRadius(12)
        
    }
}

struct ActivityCardView_Previews: PreviewProvider {
    static var previews: some View {
//        ActivityCardView(card: Activity (id: 8, judul: "Matrix", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan agar jadi pintar matrix kok ga panjang lagi", image: "", tags: ["Ulangan Harian","Ujian Akhir", "Tag1", "Tag2"], isTodayActivity: false))
//        TagView(tagName: theTags[1].name).preferredColorScheme(.dark)
        ActivityCardView(card: Card(id: 6, judul: "Matrix", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "math-small", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], isTodayActivity: true))
    }
}
