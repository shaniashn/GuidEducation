//
//  HomeView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 12/06/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var vm: ActivityViewModel
    
    var body: some View {
        NavigationStack {
                VStack(alignment: .leading) {
                    ScrollView {
                    HStack {
                        VStack (alignment: .leading, spacing: 12) {
                            Text("Hello!")
                                .font(.system(size: 34, design: .rounded))
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
                    
                    ZStack {
//                        Rectangle()
//                            .stroke(Color.black)
//                            .frame(width: 358, height: 120)
//                        
//                        Text("Insert Calendar Here")
                        CalendarView()
                            .padding(.vertical)
                    }
                    VStack {
                        ForEach(vm.cards) { act in
                            Button {
                                
                            } label: {
                                TodayActivityCard(card: act)
                            }
                        }
                    }
                    
                    HStack(content: {
                        Text("Your Activities ")
                            .font(.system(size: 20, weight: .semibold))
                        Spacer()
                        NavigationLink {
                            AllActivitiesView()
                        } label: {
                            Text("See all")
                        }
                        
                    })
                    .padding(.top, 20)
                    VStack(content: {
                        ForEach(vm.cards) { act in
                            ActivityCardView(card: act)
                        }
                    })
                }
                .scrollIndicators(.hidden)
                .ignoresSafeArea()
            }
            .padding(.top)
            .padding(.horizontal)
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ActivityViewModel())
    }
}
