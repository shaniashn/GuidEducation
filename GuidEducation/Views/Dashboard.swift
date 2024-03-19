    //
    //  Dashboard.swift
    //  GuidEducation
    //
    //  Created by Sha Nia Siahaan on 12/06/23.
    //

import SwiftUI

struct Dashboard: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    VStack (alignment: .leading, spacing: 12) {
                        Text("Hello!")
                            .font(.system(size: 34))
                            .fontWeight(.bold)
                        Text("Don't forget to make your plans")
                    }
                    Spacer()
                    NavigationLink(destination: NewActivityView()){
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 22, height: 22)
                            .padding()
                    }
                }
                ScrollView {
                    ZStack {
                        Rectangle()
                            .stroke(Color.black)
                            .frame(width: 358, height: 120)
                        
                        Text("Insert Calendar Here")
                    }
                    VStack {
                        NavigationLink {
                            
                        } label: {
//                            todayActivityCard
//                            TodayActivityCard(activity: Activity)
                        }

                    }
                    
                }
            }
        }
        .padding()
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}

//extension Dashboard {
//    var todayActivityCard: some View {
//        HStack(spacing: 15){
//            Image(activity.image)
//                .resizable()
//                .scaledToFit()
//                .frame(width: 80)
//            VStack(alignment: .leading){
//                VStack(alignment: .leading, spacing: 5) {
//                    HStack {
//                        Text(activity.judul)
//                            .font(.system(size: 22, weight: .bold))
//                        Spacer()
//                        Image(systemName: "chevron.right")
//                        .foregroundColor(.white)
//                    }
//                    Text(activity.deskripsi)
//                        .font(.system(size: 13, weight: .regular))
//                }
//                HStack {
//                    ForEach(0..<2) {
//                        TagView(tagName: activity.tags[$0])
//                        
//                    }
//                    
//                    if activity.tags.count > 2 {
//                        Text("\(activity.tags.count-2)+")
//                            .font(.system(size: 12))
//                            .foregroundColor(.black)
//                            .padding(4)
//                            .padding(.horizontal, 5)
//                            .background {
//                                RoundedRectangle(cornerRadius: 50)
//                                    .stroke(Color.gray, lineWidth: 2)
//                                    .background(Color.white)
//                            }
//                            .cornerRadius(50)
//                    }
//                }
//            }
//        }
//        .foregroundColor(Color.white)
//        .frame(width: .infinity)
//        .padding()
//        .background(Color.myBlue)
//        .cornerRadius(12)
//    }
//}
