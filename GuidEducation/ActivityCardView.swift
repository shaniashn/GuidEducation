    //
    //  ActivityCardView.swift
    //  GuidEducation
    //
    //  Created by Sha Nia Siahaan on 12/06/23.
    //

import SwiftUI

struct TagView: View {
    var tagName: String
    
    var body: some View {
        HStack {
            Image("icon-tag")
                .foregroundColor(.black)
            Text(tagName)
                .foregroundColor(.black)
        }
        .frame(height: 10)
        .padding(6)
        .background(Color.white)
        .cornerRadius(50)
    }
}

struct ActivityCardView: View {
    var activity: Activity
    
    var body: some View {
        HStack (alignment: .top, spacing: 0) {
            if activity.isTodayActivity {
                Image("activity-1s")
                    .padding(.trailing)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading) {
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
                    
                    Text(activity.deskripsi)
                        .lineLimit(2)
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                }
                HStack {
                    ForEach(0..<1) { index in
                        TagView(tagName: activity.tags[index])
                    }
                }
                .font(.caption)
                if !activity.isTodayActivity {
                    Image("activity-1b")
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: activity.isTodayActivity ? 130 : 265)
        .padding()
        .background(activity.isTodayActivity ? Color("today-activity-blue") : Color("your-activity-blue"))
        .cornerRadius(12)
        
    }
}

struct ActivityCardView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityCardView(activity: Activity (judul: "Matrix", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan agar jadi pintar matrix kok ga panjang lagi", image: "", tags: ["Ulangan Harian","Ujian Akhir", "Tag1", "Tag2"], isTodayActivity: false))
    }
}
