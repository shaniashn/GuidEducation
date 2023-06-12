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
                        Text("Hi, Gogon!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Don't forget to make your plans")
                    }
                    Spacer()
                    NavigationLink(destination: NewActivityView()) {
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
                            //            calendar view
                    }
                    VStack {
                        NavigationLink {
//                            MatriksView()
                        } label: {
//                            ActivityCardView(activity: activityData[3])

                        }

//                        ActivityCardView(activity: activityData[4])
                    }
//                    .padding(.bottom)
                    
                        //                MARK: - Your Activity
//                    HStack {
//                        Text("Your Activities (\(yourActivityCount))")
//                            .font(.title2)
//                            .fontWeight(.bold)
//                        Spacer()
//                        NavigationLink {
//                            AllActivityView()
//                        } label: {
//                            Text("See all")
//                        }
//                    }
//                    VStack {
//                        ActivityCardView(activity: activityData[0])
//                        ActivityCardView(activity: activityData[1])
//                    }
                    
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
